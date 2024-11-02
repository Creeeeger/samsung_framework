package androidx.picker.controller.strategy.task;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ConvertAppInfoDataTask$createOrGetAppInfoViewData$1 extends Lambda implements Function1 {
    final /* synthetic */ Function1 $createAppInfoViewData;
    final /* synthetic */ ConvertAppInfoDataTask this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConvertAppInfoDataTask$createOrGetAppInfoViewData$1(ConvertAppInfoDataTask convertAppInfoDataTask, Function1 function1) {
        super(1);
        this.this$0 = convertAppInfoDataTask;
        this.$createAppInfoViewData = function1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0062, code lost:
    
        if (r0 != null) goto L25;
     */
    @Override // kotlin.jvm.functions.Function1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invoke(java.lang.Object r8) {
        /*
            r7 = this;
            androidx.picker.model.AppInfoData r8 = (androidx.picker.model.AppInfoData) r8
            androidx.picker.controller.strategy.task.ConvertAppInfoDataTask r0 = r7.this$0
            java.util.Map r0 = r0.cachedAppInfoViewDataMap
            androidx.picker.model.AppInfo r1 = r8.getAppInfo()
            java.util.LinkedHashMap r0 = (java.util.LinkedHashMap) r0
            java.lang.Object r0 = r0.get(r1)
            androidx.picker.model.viewdata.AppInfoViewData r0 = (androidx.picker.model.viewdata.AppInfoViewData) r0
            if (r0 == 0) goto L65
            androidx.picker.model.AppInfoData r1 = r0.appInfoData
            if (r1 != r8) goto L19
            goto L62
        L19:
            boolean r1 = r1.equals(r8)
            r2 = 0
            if (r1 == 0) goto L22
            r0 = r2
            goto L62
        L22:
            android.graphics.drawable.Drawable r1 = r8.getIcon()
            if (r1 != 0) goto L2c
            android.graphics.drawable.Drawable r1 = r0.getIcon()
        L2c:
            r8.setIcon(r1)
            java.lang.String r1 = r8.getLabel()
            if (r1 != 0) goto L39
            java.lang.String r1 = r0.getLabel()
        L39:
            r8.setLabel(r1)
            androidx.picker.loader.select.SelectableItem r1 = r0.selectableItem
            boolean r3 = r1 instanceof androidx.picker.loader.select.AppDataSelectableItem
            if (r3 == 0) goto L45
            r2 = r1
            androidx.picker.loader.select.AppDataSelectableItem r2 = (androidx.picker.loader.select.AppDataSelectableItem) r2
        L45:
            if (r2 == 0) goto L4a
            r2.updateBase(r8)
        L4a:
            androidx.picker.features.observable.UpdateObservableProperty r1 = r0.dimmedItem
            r1.update(r8)
            androidx.picker.loader.AppIconFlow r2 = r0.iconFlow
            androidx.picker.features.observable.UpdateMutableState r1 = r2.base
            r1.base = r8
            androidx.picker.loader.select.SelectableItem r3 = r0.selectableItem
            int r4 = r0.spanCount
            kotlin.jvm.functions.Function1 r5 = r0.onActionClick
            androidx.picker.model.viewdata.AppInfoViewData r6 = new androidx.picker.model.viewdata.AppInfoViewData
            r0 = r6
            r1 = r8
            r0.<init>(r1, r2, r3, r4, r5)
        L62:
            if (r0 == 0) goto L65
            goto L6d
        L65:
            kotlin.jvm.functions.Function1 r0 = r7.$createAppInfoViewData
            java.lang.Object r0 = r0.invoke(r8)
            androidx.picker.model.viewdata.AppInfoViewData r0 = (androidx.picker.model.viewdata.AppInfoViewData) r0
        L6d:
            androidx.picker.controller.strategy.task.ConvertAppInfoDataTask r7 = r7.this$0
            java.util.Map r7 = r7.cachedAppInfoViewDataMap
            androidx.picker.model.AppInfo r8 = r8.getAppInfo()
            r7.put(r8, r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.picker.controller.strategy.task.ConvertAppInfoDataTask$createOrGetAppInfoViewData$1.invoke(java.lang.Object):java.lang.Object");
    }
}
