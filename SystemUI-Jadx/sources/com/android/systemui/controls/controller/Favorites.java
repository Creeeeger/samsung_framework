package com.android.systemui.controls.controller;

import android.content.ComponentName;
import android.service.controls.Control;
import android.util.Log;
import com.android.keyguard.KeyguardFMMViewController$$ExternalSyntheticOutline0;
import com.android.systemui.BasicRune;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Favorites {
    public static final Favorites INSTANCE = new Favorites();
    public static Map favMap = MapsKt__MapsKt.emptyMap();

    private Favorites() {
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean addFavorite(android.content.ComponentName r7, java.lang.CharSequence r8, com.android.systemui.controls.controller.ControlInfo r9) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.controls.controller.Favorites.addFavorite(android.content.ComponentName, java.lang.CharSequence, com.android.systemui.controls.controller.ControlInfo):boolean");
    }

    public static boolean addFavorites(ComponentName componentName, ArrayList arrayList) {
        CharSequence charSequence;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : arrayList) {
            CharSequence structure = ((Control) obj).getStructure();
            Object obj2 = linkedHashMap.get(structure);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(structure, obj2);
            }
            ((List) obj2).add(obj);
        }
        boolean z = false;
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            CharSequence charSequence2 = (CharSequence) entry.getKey();
            for (Control control : (List) entry.getValue()) {
                if (charSequence2 == null) {
                    charSequence = "";
                } else {
                    charSequence = charSequence2;
                }
                ControlInfo controlInfo = new ControlInfo(control.getControlId(), control.getTitle(), control.getSubtitle(), control.getDeviceType());
                if (BasicRune.CONTROLS_LAYOUT_TYPE) {
                    controlInfo.customControlInfo.layoutType = control.getCustomControl().getLayoutType();
                }
                Unit unit = Unit.INSTANCE;
                INSTANCE.getClass();
                if (addFavorite(componentName, charSequence, controlInfo)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public static List getAllStructures() {
        Map map = favMap;
        ArrayList arrayList = new ArrayList();
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll((List) ((Map.Entry) it.next()).getValue(), arrayList);
        }
        return arrayList;
    }

    public static List getControlsForComponent(ComponentName componentName) {
        List structuresForComponent = getStructuresForComponent(componentName);
        ArrayList arrayList = new ArrayList();
        Iterator it = structuresForComponent.iterator();
        while (it.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(((StructureInfo) it.next()).controls, arrayList);
        }
        return arrayList;
    }

    public static List getStructuresForComponent(ComponentName componentName) {
        List list = (List) favMap.get(componentName);
        if (list == null) {
            return EmptyList.INSTANCE;
        }
        return list;
    }

    public static boolean removeStructures(ComponentName componentName, boolean z) {
        boolean z2;
        LinkedHashMap linkedHashMap = new LinkedHashMap(favMap);
        if (linkedHashMap.remove(componentName) != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        favMap = linkedHashMap;
        if (BasicRune.CONTROLS_SAMSUNG_STYLE && z) {
            setActiveFlag(componentName, false);
        }
        int size = favMap.size();
        Map map = favMap;
        StringBuilder m = KeyguardFMMViewController$$ExternalSyntheticOutline0.m("removeStructures isUpdateFlag = ", z, ", favMap.size = ", size, ", favMap = ");
        m.append(map);
        Log.d("Favorites", m.toString());
        return z2;
    }

    public static void replaceControls(StructureInfo structureInfo) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(favMap);
        ArrayList arrayList = new ArrayList();
        ComponentName componentName = structureInfo.componentName;
        boolean z = false;
        for (StructureInfo structureInfo2 : getStructuresForComponent(componentName)) {
            if (Intrinsics.areEqual(structureInfo2.structure, structureInfo.structure)) {
                z = true;
                structureInfo2 = structureInfo;
            }
            if (!structureInfo2.controls.isEmpty()) {
                arrayList.add(structureInfo2);
            }
        }
        if (!z && !structureInfo.controls.isEmpty()) {
            arrayList.add(structureInfo);
        }
        linkedHashMap.put(componentName, arrayList);
        favMap = linkedHashMap;
        Log.d("Favorites", "replaceControls favMap.size = " + linkedHashMap.size() + ", favMap = " + favMap);
    }

    public static void setActiveFlag(ComponentName componentName, boolean z) {
        List list = (List) favMap.get(componentName);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((StructureInfo) it.next()).customStructureInfo.active = z;
            }
        }
        Log.d("Favorites", "setActiveFlag = " + favMap.get(componentName));
    }

    public static boolean updateControls(ComponentName componentName, List list) {
        boolean z;
        Pair pair;
        int mapCapacity = MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        if (mapCapacity < 16) {
            mapCapacity = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
        for (Object obj : list) {
            linkedHashMap.put(((Control) obj).getControlId(), obj);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        boolean z2 = false;
        for (StructureInfo structureInfo : getStructuresForComponent(componentName)) {
            for (ControlInfo controlInfo : structureInfo.controls) {
                Control control = (Control) linkedHashMap.get(controlInfo.controlId);
                CharSequence charSequence = structureInfo.structure;
                if (control != null) {
                    if (!Intrinsics.areEqual(control.getTitle(), controlInfo.controlTitle) || !Intrinsics.areEqual(control.getSubtitle(), controlInfo.controlSubtitle) || control.getDeviceType() != controlInfo.deviceType) {
                        z2 = true;
                        controlInfo = new ControlInfo(controlInfo.controlId, control.getTitle(), control.getSubtitle(), control.getDeviceType(), controlInfo.customControlInfo);
                    }
                    CharSequence structure = control.getStructure();
                    if (structure == null) {
                        structure = "";
                    }
                    if (!Intrinsics.areEqual(charSequence, structure)) {
                        z2 = true;
                    }
                    pair = new Pair(structure, controlInfo);
                } else {
                    pair = new Pair(charSequence, controlInfo);
                }
                CharSequence charSequence2 = (CharSequence) pair.component1();
                ControlInfo controlInfo2 = (ControlInfo) pair.component2();
                Object obj2 = linkedHashMap2.get(charSequence2);
                if (obj2 == null) {
                    obj2 = new ArrayList();
                    linkedHashMap2.put(charSequence2, obj2);
                }
                ((List) obj2).add(controlInfo2);
                if (BasicRune.CONTROLS_SAMSUNG_STYLE) {
                    linkedHashMap3.put(charSequence2, Boolean.TRUE);
                }
            }
        }
        if (!z2) {
            return false;
        }
        ArrayList arrayList = new ArrayList(linkedHashMap2.size());
        for (Map.Entry entry : linkedHashMap2.entrySet()) {
            CharSequence charSequence3 = (CharSequence) entry.getKey();
            StructureInfo structureInfo2 = new StructureInfo(componentName, charSequence3, (List) entry.getValue());
            if (BasicRune.CONTROLS_SAMSUNG_STYLE) {
                Boolean bool = (Boolean) linkedHashMap3.get(charSequence3);
                if (bool != null) {
                    z = bool.booleanValue();
                } else {
                    z = false;
                }
                structureInfo2.customStructureInfo.active = z;
            }
            arrayList.add(structureInfo2);
        }
        LinkedHashMap linkedHashMap4 = new LinkedHashMap(favMap);
        linkedHashMap4.put(componentName, arrayList);
        favMap = linkedHashMap4;
        Log.d("Favorites", "updateControls favMap.size = " + linkedHashMap4.size() + ", favMap = " + favMap);
        return true;
    }
}
