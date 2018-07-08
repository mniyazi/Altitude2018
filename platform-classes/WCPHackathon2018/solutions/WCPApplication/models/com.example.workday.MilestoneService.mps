<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a40fa9b9-ac1e-4a80-9496-109c5a3710e0(com.example.workday.MilestoneService)">
  <persistence version="9" />
  <languages>
    <use id="47f0996a-ae2c-4480-a29e-e6f3884f34dd" name="com.workday.yp.core" version="14" />
    <use id="fd8f04d0-be0c-42ab-8ec1-d83c74435069" name="com.workday.yp.services" version="1" />
  </languages>
  <imports />
  <registry>
    <language id="fd8f04d0-be0c-42ab-8ec1-d83c74435069" name="com.workday.yp.services">
      <concept id="5058063742344900284" name="com.workday.yp.services.structure.ResourceReferenceType" flags="ng" index="23Wvig">
        <child id="5058063742344900286" name="reference" index="23Wvii" />
      </concept>
      <concept id="5058063742344900285" name="com.workday.yp.services.structure.ResourceReferenceInReferenceType" flags="ng" index="23Wvih">
        <reference id="5058063742344900361" name="resource" index="23Wvk_" />
      </concept>
      <concept id="7605750031045377566" name="com.workday.yp.services.structure.YpServiceResource" flags="ig" index="1rrjd5">
        <property id="7155380407799380764" name="wid" index="2cTJYd" />
      </concept>
    </language>
    <language id="47f0996a-ae2c-4480-a29e-e6f3884f34dd" name="com.workday.yp.core">
      <concept id="5922688198750250709" name="com.workday.yp.core.structure.EntityDefinition" flags="ng" index="FQrHs">
        <child id="3479003092397024487" name="fields" index="1Qy886" />
      </concept>
      <concept id="8004768178768399143" name="com.workday.yp.core.structure.ClassType" flags="ng" index="NKuOo">
        <reference id="8004768178768399168" name="class" index="NKuPZ" />
      </concept>
      <concept id="8004768178767108048" name="com.workday.yp.core.structure.Class" flags="lg" index="NPj7J">
        <child id="559606593808590432" name="classSpecification" index="1Ean_r" />
      </concept>
      <concept id="7378730404219262960" name="com.workday.yp.core.structure.TextType" flags="ng" index="UITf5" />
      <concept id="7378730404213786092" name="com.workday.yp.core.structure.Relationship" flags="ig" index="UVK7p">
        <child id="559606593808566133" name="relationshipType" index="1Eahxe" />
      </concept>
      <concept id="7378730404213786091" name="com.workday.yp.core.structure.Attribute" flags="ig" index="UVK7u" />
      <concept id="155737257489097794" name="com.workday.yp.core.structure.DateType" flags="ng" index="3$LMTR" />
      <concept id="559606593796598937" name="com.workday.yp.core.structure.TenantedSpecEnum" flags="ng" index="1EWBey" />
      <concept id="559606593796598934" name="com.workday.yp.core.structure.ReferencesLinkEnum" flags="ng" index="1EWBeH" />
      <concept id="3479003092397023143" name="com.workday.yp.core.structure.FieldWithType" flags="ig" index="1Qyb_6">
        <child id="7378730404213786258" name="type" index="UVKaB" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1rrjd5" id="19XKmaodEiE">
    <property role="TrG5h" value="Worker" />
    <property role="2cTJYd" value="870019000601100006eaa0dba00d0000" />
  </node>
  <node concept="NPj7J" id="19XKmaodEjR">
    <property role="TrG5h" value="RewardType" />
    <node concept="UVK7u" id="3vcrev02aiO" role="1Qy886">
      <property role="TrG5h" value="rewardName" />
      <node concept="UITf5" id="3vcrev02ajj" role="UVKaB" />
    </node>
    <node concept="1EWBey" id="19XKmaodEjS" role="1Ean_r" />
  </node>
  <node concept="NPj7J" id="19XKmaodEmx">
    <property role="TrG5h" value="RewardCondition" />
    <node concept="UVK7u" id="19XKmaodEmG" role="1Qy886">
      <property role="TrG5h" value="tenure" />
      <node concept="3$LMTR" id="19XKmaodEmS" role="UVKaB" />
    </node>
    <node concept="1EWBey" id="19XKmaodEmy" role="1Ean_r" />
  </node>
  <node concept="NPj7J" id="19XKmaodGAa">
    <property role="TrG5h" value="Notification" />
    <node concept="1EWBey" id="19XKmaodGAb" role="1Ean_r" />
  </node>
  <node concept="NPj7J" id="3vcrev027Vq">
    <property role="TrG5h" value="Reward" />
    <node concept="UVK7p" id="3vcrev027Zm" role="1Qy886">
      <property role="TrG5h" value="awardTo" />
      <node concept="1EWBeH" id="3vcrev02acE" role="1Eahxe" />
      <node concept="23Wvig" id="3vcrev02acJ" role="UVKaB">
        <node concept="23Wvih" id="3vcrev02acI" role="23Wvii">
          <ref role="23Wvk_" node="19XKmaodEiE" resolve="Worker" />
        </node>
      </node>
    </node>
    <node concept="UVK7p" id="3vcrev02acY" role="1Qy886">
      <property role="TrG5h" value="ofType" />
      <node concept="1EWBeH" id="3vcrev02ad_" role="1Eahxe" />
      <node concept="NKuOo" id="3vcrev02adE" role="UVKaB">
        <ref role="NKuPZ" node="19XKmaodEjR" resolve="RewardType" />
      </node>
    </node>
    <node concept="UVK7u" id="3vcrev027W8" role="1Qy886">
      <property role="TrG5h" value="id" />
      <node concept="UITf5" id="3vcrev027X2" role="UVKaB" />
    </node>
    <node concept="UVK7u" id="3vcrev027X9" role="1Qy886">
      <property role="TrG5h" value="date" />
      <node concept="3$LMTR" id="3vcrev027YP" role="UVKaB" />
    </node>
    <node concept="UVK7u" id="3vcrev027YW" role="1Qy886">
      <property role="TrG5h" value="code" />
      <node concept="UITf5" id="3vcrev027Zf" role="UVKaB" />
    </node>
    <node concept="1EWBey" id="3vcrev027Vr" role="1Ean_r" />
  </node>
</model>

