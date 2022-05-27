<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
	xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
  xmlns:sh="http://www.w3.org/ns/shacl#"
  xmlns:graphml="http://graphml.graphdrawing.org/xmlns"
  xmlns:y="http://www.yworks.com/xml/graphml"
>

<xsl:key name="items" match="/ROOT/rdf:RDF/rdf:Description" use="@rdf:about"/>
<xsl:key name="blanks" match="/ROOT/rdf:RDF/rdf:Description" use="@rdf:nodeID"/>
<xsl:key name="resources" match="/ROOT/rdf:RDF/rdf:Description" use="@rdf:about|@rdf:nodeID"/>
<xsl:key name="node-geo" match="/ROOT/graphml:graphml/graphml:graph/graphml:node" use="graphml:data[@key='d3']"/>

<xsl:variable name="params" select="/ROOT/@params"/>

<xsl:template match="*" mode="label">
  <xsl:choose>
    <xsl:when test="rdfs:label!=''"><xsl:value-of select="rdfs:label"/></xsl:when>
    <xsl:when test="sh:name!=''"><xsl:value-of select="sh:name"/></xsl:when>
    <xsl:otherwise><xsl:value-of select="@rdf:about|@rdf:nodeID"/></xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template match="/">
	<graphml>
		<key attr.name="url" attr.type="string" for="node" id="d3"/>
		<key attr.name="url" attr.type="string" for="edge" id="d7"/>
		<key for="node" id="d6" yfiles.type="nodegraphics"/>
		<key for="edge" id="d10" yfiles.type="edgegraphics"/>
		<graph id="G" edgedefault="directed">
			<xsl:apply-templates select="ROOT/rdf:RDF"/>
		</graph>
	</graphml>
</xsl:template>

<xsl:template match="rdf:RDF">
  <xsl:apply-templates select="rdf:Description[rdf:type/@rdf:resource='http://www.w3.org/ns/shacl#NodeShape']" mode="node"/>
  <xsl:apply-templates select="rdf:Description[rdf:type/@rdf:resource='http://www.w3.org/ns/shacl#NodeShape']" mode="edge"/>
</xsl:template>

<xsl:template match="rdf:Description" mode="node">
  <xsl:variable name="geo" select="key('node-geo',@rdf:about)"/>
  <xsl:if test="not($params='follow') or exists($geo/graphml:data)">
    <node id="{@rdf:about}">
  		<data key="d3"><xsl:value-of select="@rdf:about"/></data>
  		<data key="d6">
  			<y:GenericNode configuration="com.yworks.entityRelationship.big_entity">
          <xsl:variable name="geo" select="key('node-geo',@rdf:about)"/>
          <xsl:choose>
            <xsl:when test="exists($geo/graphml:data/y:GenericNode/y:Geometry)"><xsl:copy-of select="$geo/graphml:data/y:GenericNode/y:Geometry"/></xsl:when>
  				  <xsl:otherwise><y:Geometry height="90.0" width="80.0" x="637.0" y="277.0"/></xsl:otherwise>
          </xsl:choose>
  				<y:Fill color="#E8EEF7" color2="#B7C9E3" transparent="false"/>
  				<y:BorderStyle color="#000000" type="line" width="1.0"/>
  				<y:NodeLabel alignment="center" autoSizePolicy="content" backgroundColor="#B7C9E3" configuration="com.yworks.entityRelationship.label.name" fontFamily="Dialog" fontSize="12" fontStyle="plain" hasLineColor="false" height="18.1328125" horizontalTextPosition="center" iconTextGap="4" modelName="internal" modelPosition="t" textColor="#000000" verticalTextPosition="bottom" visible="true" width="44.25390625" x="17.873046875" y="4.0">
  					<xsl:apply-templates select="." mode="label"/>
  				</y:NodeLabel>
  				<y:NodeLabel alignment="left" autoSizePolicy="content" configuration="com.yworks.entityRelationship.label.attributes" fontFamily="Dialog" fontSize="12" fontStyle="plain" hasBackgroundColor="false" hasLineColor="false" height="46.3984375" horizontalTextPosition="center" iconTextGap="4" modelName="custom" textColor="#000000" verticalTextPosition="top" visible="true" width="65.541015625" x="2.0" y="30.1328125">
            <!-- Properties -->
  					<xsl:for-each select="key('resources',sh:property/(@rdf:nodeID|@rdf:resource))">
  						<xsl:if test="position()!=1"><xsl:text>
</xsl:text></xsl:if><xsl:apply-templates select="." mode="label"/>
  					</xsl:for-each>
  				<y:LabelModel><y:ErdAttributesNodeLabelModel/></y:LabelModel><y:ModelParameter><y:ErdAttributesNodeLabelModelParameter/></y:ModelParameter></y:NodeLabel>
  			</y:GenericNode>
  		</data>
  	</node>
  </xsl:if>
</xsl:template>

<xsl:template match="rdf:Description" mode="edge">
  <xsl:variable name="subject-uri"><xsl:value-of select="@rdf:about"/></xsl:variable>
  <xsl:variable name="subject-geo" select="key('node-geo',$subject-uri)"/>
  <xsl:if test="not($params='follow') or exists($subject-geo/graphml:data)">
    <!-- Associations -->
    <xsl:for-each select="key('resources',sh:property/(@rdf:nodeID|@rdf:resource))[exists(key('items',(sh:node|sh:class)/@rdf:resource))]">
      <xsl:variable name="object-uri"><xsl:value-of select="(sh:node|sh:class)/@rdf:resource"/></xsl:variable>
      <xsl:variable name="object-geo" select="key('node-geo',$object-uri)"/>
      <xsl:if test="not($params='follow') or exists($object-geo/graphml:data)">
        <edge source="{$subject-uri}" target="{$object-uri}">
    			<data key="d10">
    				<xsl:element name="y:PolyLineEdge">
    					<y:LineStyle color="#000000" type="line" width="1.0"/>
    					<y:Arrows source="none" target="standard"/>
    					<y:EdgeLabel alignment="center" backgroundColor="#FFFFFF" configuration="AutoFlippingLabel" distance="2.0" fontFamily="Dialog" fontSize="12" fontStyle="plain" hasLineColor="false" modelName="custom" preferredPlacement="anywhere" ratio="0.5" textColor="#000000" visible="true"><xsl:apply-templates select="." mode="label"/><y:LabelModel>
    							<y:SmartEdgeLabelModel autoRotationEnabled="false" defaultAngle="0.0" defaultDistance="10.0"/>
    						</y:LabelModel>
    						<y:ModelParameter>
    							<y:SmartEdgeLabelModelParameter angle="0.0" distance="30.0" distanceToCenter="true" position="center" ratio="0.5" segment="0"/>
    						</y:ModelParameter>
    						<y:PreferredPlacementDescriptor angle="0.0" angleOffsetOnRightSide="0" angleReference="absolute" angleRotationOnRightSide="co" distance="-1.0" frozen="true" placement="anywhere" side="anywhere" sideReference="relative_to_edge_flow"/>
    					</y:EdgeLabel>
    					<y:BendStyle smoothed="false"/>
    				</xsl:element>
    			</data>
    		</edge>
      </xsl:if>
    </xsl:for-each>
    <!-- Generalisations -->
    <xsl:for-each select="rdfs:subClassOf">
      <xsl:variable name="object-uri"><xsl:value-of select="@rdf:resource"/></xsl:variable>
      <xsl:variable name="object-geo" select="key('node-geo',$object-uri)"/>
      <xsl:if test="not($params='follow') or exists($object-geo/graphml:data)">
        <edge source="{$subject-uri}" target="{$object-uri}">
    			<data key="d10">
            <xsl:element name="y:PolyLineEdge">
              <y:LineStyle color="#000000" type="line" width="1.0"/>
              <y:Arrows source="none" target="white_delta"/>
              <y:BendStyle smoothed="false"/>
            </xsl:element>
    			</data>
    		</edge>
      </xsl:if>
    </xsl:for-each>
  </xsl:if>
</xsl:template>

</xsl:stylesheet>
