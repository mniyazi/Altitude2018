<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:91c3dd44-a9da-4947-8d2d-d4d7f9f19f39(com.workday.workdog.main)">
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
      <concept id="1937220861450412068" name="com.workday.yp.core.structure.DecimalType" flags="ng" index="8Q0gS">
        <property id="1937220861450412071" name="scale" index="8Q0gV" />
      </concept>
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
      <concept id="3523328935659766363" name="com.workday.yp.core.structure.IntegerType" flags="ng" index="3kfAa$" />
      <concept id="155737257488878512" name="com.workday.yp.core.structure.BooleanType" flags="ng" index="3$K$65" />
      <concept id="155737257489097794" name="com.workday.yp.core.structure.DateType" flags="ng" index="3$LMTR" />
      <concept id="129881496373310322" name="com.workday.yp.core.structure.NewLineAttribute" flags="ng" index="1BXPRU" />
      <concept id="559606593796598937" name="com.workday.yp.core.structure.TenantedSpecEnum" flags="ng" index="1EWBey" />
      <concept id="559606593796598934" name="com.workday.yp.core.structure.ReferencesLinkEnum" flags="ng" index="1EWBeH" />
      <concept id="3479003092397023143" name="com.workday.yp.core.structure.FieldWithType" flags="ig" index="1Qyb_6">
        <child id="7378730404213786258" name="type" index="UVKaB" />
      </concept>
      <concept id="4876783287144822641" name="com.workday.yp.core.structure.UseForDisplayAttribute" flags="ng" index="3RuuvY" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="NPj7J" id="2YTipw2$UFU">
    <property role="TrG5h" value="Workdog" />
    <node concept="1EWBey" id="2YTipw2$UFV" role="1Ean_r" />
    <node concept="UVK7u" id="5egahtneTgZ" role="1Qy886">
      <property role="TrG5h" value="name" />
      <node concept="UITf5" id="5egahtneThe" role="UVKaB" />
      <node concept="3RuuvY" id="5egahtneTjx" role="lGtFl" />
    </node>
    <node concept="UVK7u" id="5egahtneThm" role="1Qy886">
      <property role="TrG5h" value="dateOfBirth" />
      <node concept="3$LMTR" id="5egahtneTh$" role="UVKaB" />
    </node>
    <node concept="UVK7u" id="5egahtneThF" role="1Qy886">
      <property role="TrG5h" value="approved" />
      <node concept="3$K$65" id="5egahtneThV" role="UVKaB" />
    </node>
    <node concept="UVK7u" id="5egahtneTi2" role="1Qy886">
      <property role="TrG5h" value="weight" />
      <node concept="8Q0gS" id="5egahtneTih" role="UVKaB">
        <property role="8Q0gV" value="2" />
      </node>
    </node>
    <node concept="UVK7p" id="5egahtneTl_" role="1Qy886">
      <property role="TrG5h" value="ofBreed" />
      <node concept="NKuOo" id="5egahtneTmj" role="UVKaB">
        <ref role="NKuPZ" node="5egahtneTiv" resolve="Breed" />
      </node>
      <node concept="1EWBeH" id="5egahtneTmd" role="1Eahxe" />
    </node>
    <node concept="UVK7p" id="65O5hffBj7x" role="1Qy886">
      <property role="TrG5h" value="ownedByWorker" />
      <node concept="1EWBeH" id="65O5hffBj7Y" role="1Eahxe" />
      <node concept="23Wvig" id="65O5hffBll3" role="UVKaB">
        <node concept="23Wvih" id="65O5hffBll1" role="23Wvii">
          <ref role="23Wvk_" node="65O5hffBj86" resolve="Worker" />
        </node>
      </node>
    </node>
  </node>
  <node concept="NPj7J" id="5egahtneTiv">
    <property role="TrG5h" value="Breed" />
    <node concept="1EWBey" id="5egahtneTiw" role="1Ean_r" />
    <node concept="UVK7u" id="5egahtneTiB" role="1Qy886">
      <property role="TrG5h" value="breedName" />
      <node concept="UITf5" id="5egahtneTiY" role="UVKaB" />
      <node concept="3RuuvY" id="5egahtneTjp" role="lGtFl" />
    </node>
    <node concept="UVK7u" id="6mMyc3GSl9s" role="1Qy886">
      <property role="TrG5h" value="key" />
      <node concept="UITf5" id="6mMyc3GSl9G" role="UVKaB" />
    </node>
    <node concept="UVK7u" id="6mMyc3GSlcB" role="1Qy886">
      <property role="TrG5h" value="imageUri" />
      <node concept="UITf5" id="6mMyc3GSlcV" role="UVKaB" />
    </node>
    <node concept="UVK7u" id="5ArAYdlKhaW" role="1Qy886">
      <property role="TrG5h" value="inUse" />
      <node concept="3$K$65" id="5ArAYdlKhbb" role="UVKaB" />
    </node>
  </node>
  <node concept="NPj7J" id="5egahtneTjB">
    <property role="TrG5h" value="LocationPolicy" />
    <node concept="1EWBey" id="5egahtneTjC" role="1Ean_r" />
    <node concept="UVK7u" id="5egahtneTjS" role="1Qy886">
      <property role="TrG5h" value="allowsDogs" />
      <node concept="3$K$65" id="5egahtneTke" role="UVKaB" />
    </node>
    <node concept="UVK7u" id="5egahtneTkm" role="1Qy886">
      <property role="TrG5h" value="maxDogs" />
      <node concept="3kfAa$" id="5egahtneTk$" role="UVKaB" />
    </node>
    <node concept="UVK7p" id="65O5hffBlmO" role="1Qy886">
      <property role="TrG5h" value="forLocation" />
      <node concept="23Wvig" id="65O5hffBlnu" role="UVKaB">
        <node concept="23Wvih" id="65O5hffBlnt" role="23Wvii">
          <ref role="23Wvk_" node="65O5hffBj87" resolve="Location" />
        </node>
      </node>
      <node concept="1EWBeH" id="65O5hffBlnn" role="1Eahxe" />
    </node>
  </node>
  <node concept="NPj7J" id="5egahtneTkF">
    <property role="TrG5h" value="Visit" />
    <node concept="1EWBey" id="5egahtneTkG" role="1Ean_r" />
    <node concept="UVK7u" id="5egahtneTlb" role="1Qy886">
      <property role="TrG5h" value="visitDate" />
      <node concept="3$LMTR" id="5egahtneTlt" role="UVKaB" />
      <node concept="1BXPRU" id="65O5hffBlnV" role="lGtFl" />
    </node>
    <node concept="UVK7p" id="65O5hffBllr" role="1Qy886">
      <property role="TrG5h" value="atLocation" />
      <node concept="23Wvig" id="65O5hffBllV" role="UVKaB">
        <node concept="23Wvih" id="65O5hffBllU" role="23Wvii">
          <ref role="23Wvk_" node="65O5hffBj87" resolve="Location" />
        </node>
      </node>
      <node concept="1EWBeH" id="65O5hffBllO" role="1Eahxe" />
    </node>
    <node concept="UVK7p" id="65O5hffBlma" role="1Qy886">
      <property role="TrG5h" value="forWorkdog" />
      <node concept="1EWBeH" id="65O5hffBlmr" role="1Eahxe" />
      <node concept="NKuOo" id="65O5hffBlmw" role="UVKaB">
        <ref role="NKuPZ" node="2YTipw2$UFU" resolve="Workdog" />
      </node>
    </node>
  </node>
  <node concept="1rrjd5" id="65O5hffBj86">
    <property role="TrG5h" value="Worker" />
    <property role="2cTJYd" value="870019000601100006eaa0dba00d0000" />
  </node>
  <node concept="1rrjd5" id="65O5hffBj87">
    <property role="TrG5h" value="Location" />
    <property role="2cTJYd" value="870019000601100006f2d3662fb50002" />
  </node>
</model>

