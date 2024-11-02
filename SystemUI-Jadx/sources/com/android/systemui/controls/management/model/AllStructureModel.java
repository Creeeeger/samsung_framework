package com.android.systemui.controls.management.model;

import android.content.res.Resources;
import android.service.controls.Control;
import com.android.systemui.controls.ControlStatus;
import com.android.systemui.controls.controller.ControlInfo;
import com.android.systemui.controls.management.model.StructureModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AllStructureModel implements StructureModel {
    public final List controls;
    public final List elements;
    public final AllStructureModel$favoriteControlChangeCallback$1 favoriteControlChangeCallback;
    public final StructureModel.StructureModelCallback favoriteControlChangeMainCallback;
    public final Map favoriteIds;
    public final boolean isLoading;
    public final String removedString;
    public final Resources resources;

    /* JADX WARN: Code restructure failed: missing block: B:124:0x02c7, code lost:
    
        if (r12 != false) goto L110;
     */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.systemui.controls.management.model.AllStructureModel$favoriteControlChangeCallback$1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public AllStructureModel(android.content.res.Resources r25, java.util.List<com.android.systemui.controls.ControlStatus> r26, java.util.List<java.lang.String> r27, com.android.systemui.controls.management.model.StructureModel.StructureModelCallback r28, boolean r29) {
        /*
            Method dump skipped, instructions count: 750
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.controls.management.model.AllStructureModel.<init>(android.content.res.Resources, java.util.List, java.util.List, com.android.systemui.controls.management.model.StructureModel$StructureModelCallback, boolean):void");
    }

    @Override // com.android.systemui.controls.management.model.StructureModel
    public final List getElements() {
        return this.elements;
    }

    public final List getFavorites() {
        ControlInfo controlInfo;
        Object obj;
        Control control;
        List flatten = CollectionsKt__IterablesKt.flatten(((LinkedHashMap) this.favoriteIds).values());
        ArrayList arrayList = new ArrayList();
        Iterator it = ((ArrayList) flatten).iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Iterator it2 = this.controls.iterator();
            while (true) {
                controlInfo = null;
                if (it2.hasNext()) {
                    obj = it2.next();
                    if (Intrinsics.areEqual(((ControlStatus) obj).control.getControlId(), str)) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            ControlStatus controlStatus = (ControlStatus) obj;
            if (controlStatus != null) {
                control = controlStatus.control;
            } else {
                control = null;
            }
            if (control != null) {
                ControlInfo.Companion.getClass();
                controlInfo = ControlInfo.Companion.fromControl(control);
            }
            if (controlInfo != null) {
                arrayList.add(controlInfo);
            }
        }
        return arrayList;
    }
}
