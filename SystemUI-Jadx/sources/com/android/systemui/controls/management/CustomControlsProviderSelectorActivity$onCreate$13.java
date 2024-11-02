package com.android.systemui.controls.management;

import android.content.ComponentName;
import android.util.Log;
import com.android.systemui.controls.controller.ControlsControllerImpl;
import com.android.systemui.controls.controller.CustomControlsController;
import com.android.systemui.controls.controller.Favorites;
import com.android.systemui.controls.controller.StructureInfo;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
final /* synthetic */ class CustomControlsProviderSelectorActivity$onCreate$13 extends FunctionReferenceImpl implements Function2 {
    public CustomControlsProviderSelectorActivity$onCreate$13(Object obj) {
        super(2, obj, CustomControlsController.class, "setActivePanelFlag", "setActivePanelFlag(Landroid/content/ComponentName;Z)V", 0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        ComponentName componentName = (ComponentName) obj;
        boolean booleanValue = ((Boolean) obj2).booleanValue();
        ((ControlsControllerImpl) ((CustomControlsController) this.receiver)).getClass();
        Favorites.INSTANCE.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap(Favorites.favMap);
        List list = (List) linkedHashMap.get(componentName);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((StructureInfo) it.next()).customStructureInfo.active = booleanValue;
            }
        } else {
            StructureInfo structureInfo = new StructureInfo(componentName, "", EmptyList.INSTANCE);
            structureInfo.customStructureInfo.active = booleanValue;
            list = Collections.singletonList(structureInfo);
        }
        linkedHashMap.put(componentName, list);
        Favorites.favMap = linkedHashMap;
        Log.d("Favorites", "setActivePanelFlag = " + linkedHashMap.get(componentName) + ", active = " + booleanValue);
        return Unit.INSTANCE;
    }
}
