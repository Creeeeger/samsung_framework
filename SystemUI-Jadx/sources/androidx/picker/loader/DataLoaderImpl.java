package androidx.picker.loader;

import androidx.picker.features.scs.AbstractAppDataListFactory;
import androidx.picker.helper.PackageManagerHelper;
import androidx.picker.model.AppInfo;
import androidx.picker.model.AppInfoData;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SafeFlow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DataLoaderImpl implements DataLoader {
    public final AbstractAppDataListFactory factory;
    public final PackageManagerHelper packageManagerHelper;
    public final Lazy labelMap$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: androidx.picker.loader.DataLoaderImpl$labelMap$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            List<AppInfoData> dataList = DataLoaderImpl.this.factory.getDataList();
            HashMap hashMap = new HashMap();
            for (AppInfoData appInfoData : dataList) {
                hashMap.put(appInfoData.getAppInfo(), appInfoData.getLabel());
            }
            return hashMap;
        }
    });
    public final DataLoaderImpl$iconLoader$1 iconLoader = new CachedLoader() { // from class: androidx.picker.loader.DataLoaderImpl$iconLoader$1
        /* JADX WARN: Removed duplicated region for block: B:12:0x005b  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x00ac  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x009d  */
        @Override // androidx.picker.loader.CachedLoader
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object createValue(java.lang.Object r10) {
            /*
                r9 = this;
                androidx.picker.model.AppInfo r10 = (androidx.picker.model.AppInfo) r10
                androidx.picker.loader.DataLoaderImpl r9 = androidx.picker.loader.DataLoaderImpl.this
                r9.getClass()
                java.lang.String r0 = r10.activityName
                boolean r0 = kotlin.text.StringsKt__StringsJVMKt.isBlank(r0)
                r1 = 1
                java.lang.Integer r2 = java.lang.Integer.valueOf(r1)
                r0 = r0 ^ r1
                java.lang.String r3 = "android.app.ApplicationPackageManager"
                r4 = 0
                androidx.picker.helper.PackageManagerHelper r9 = r9.packageManagerHelper
                if (r0 == 0) goto L6f
                java.lang.String r0 = r10.activityName
                boolean r0 = kotlin.text.StringsKt__StringsJVMKt.isBlank(r0)
                r0 = r0 ^ r1
                if (r0 == 0) goto L6f
                java.lang.String r0 = r10.packageName
                java.lang.String r5 = r10.activityName
                int r6 = r10.user
                r7 = r9
                androidx.picker.helper.PackageManagerHelperImpl r7 = (androidx.picker.helper.PackageManagerHelperImpl) r7
                r7.getClass()
                android.content.ComponentName r8 = new android.content.ComponentName
                r8.<init>(r0, r5)
                android.content.pm.PackageManager r0 = r7.getPackageManager(r6, r0)
                java.lang.Class<android.content.ComponentName> r5 = android.content.ComponentName.class
                java.lang.Class r6 = java.lang.Integer.TYPE
                java.lang.Class[] r5 = new java.lang.Class[]{r5, r6}
                java.lang.String r6 = "semGetActivityIconForIconTray"
                java.lang.reflect.Method r3 = androidx.reflect.SeslBaseReflector.getMethod(r3, r6, r5)
                if (r3 == 0) goto L58
                java.lang.Object[] r2 = new java.lang.Object[]{r8, r2}
                java.lang.Object r0 = androidx.reflect.SeslBaseReflector.invoke(r0, r3, r2)
                boolean r2 = r0 instanceof android.graphics.drawable.Drawable
                if (r2 == 0) goto L58
                android.graphics.drawable.Drawable r0 = (android.graphics.drawable.Drawable) r0
                goto L59
            L58:
                r0 = r4
            L59:
                if (r0 != 0) goto Laa
                java.lang.String r0 = r10.packageName
                java.lang.String r2 = r10.activityName
                int r10 = r10.user
                android.content.ComponentName r3 = new android.content.ComponentName
                r3.<init>(r0, r2)
                android.content.pm.PackageManager r10 = r7.getPackageManager(r10, r0)
                android.graphics.drawable.Drawable r4 = r10.getActivityIcon(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> La9
                goto La9
            L6f:
                java.lang.String r0 = r10.packageName
                int r5 = r10.user
                r6 = r9
                androidx.picker.helper.PackageManagerHelperImpl r6 = (androidx.picker.helper.PackageManagerHelperImpl) r6
                android.content.pm.PackageManager r5 = r6.getPackageManager(r5, r0)
                java.lang.Class<java.lang.String> r7 = java.lang.String.class
                java.lang.Class r8 = java.lang.Integer.TYPE
                java.lang.Class[] r7 = new java.lang.Class[]{r7, r8}
                java.lang.String r8 = "semGetApplicationIconForIconTray"
                java.lang.reflect.Method r3 = androidx.reflect.SeslBaseReflector.getMethod(r3, r8, r7)
                if (r3 == 0) goto L9a
                java.lang.Object[] r0 = new java.lang.Object[]{r0, r2}
                java.lang.Object r0 = androidx.reflect.SeslBaseReflector.invoke(r5, r3, r0)
                boolean r2 = r0 instanceof android.graphics.drawable.Drawable
                if (r2 == 0) goto L9a
                android.graphics.drawable.Drawable r0 = (android.graphics.drawable.Drawable) r0
                goto L9b
            L9a:
                r0 = r4
            L9b:
                if (r0 != 0) goto Laa
                java.lang.String r0 = r10.packageName
                int r10 = r10.user
                android.content.pm.PackageManager r10 = r6.getPackageManager(r10, r0)
                android.graphics.drawable.Drawable r4 = r10.getApplicationIcon(r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> La9
            La9:
                r0 = r4
            Laa:
                if (r0 != 0) goto Lc0
                r10 = r9
                androidx.picker.helper.PackageManagerHelperImpl r10 = (androidx.picker.helper.PackageManagerHelperImpl) r10
                r10.getClass()
                java.lang.Object r0 = androidx.core.content.ContextCompat.sLock
                android.content.Context r10 = r10.context
                r0 = 2131234924(0x7f08106c, float:1.8086027E38)
                android.graphics.drawable.Drawable r0 = r10.getDrawable(r0)
                kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            Lc0:
                androidx.picker.helper.PackageManagerHelperImpl r9 = (androidx.picker.helper.PackageManagerHelperImpl) r9
                android.content.Context r9 = r9.context
                android.content.res.Resources r10 = r9.getResources()
                r2 = 2131167924(0x7f070ab4, float:1.7950135E38)
                int r10 = r10.getDimensionPixelSize(r2)
                android.graphics.Bitmap r2 = androidx.core.graphics.drawable.DrawableKt.toBitmap$default(r0)     // Catch: java.lang.IllegalArgumentException -> Le2
                android.graphics.Bitmap r10 = android.graphics.Bitmap.createScaledBitmap(r2, r10, r10, r1)     // Catch: java.lang.IllegalArgumentException -> Le2
                android.content.res.Resources r9 = r9.getResources()     // Catch: java.lang.IllegalArgumentException -> Le2
                android.graphics.drawable.BitmapDrawable r1 = new android.graphics.drawable.BitmapDrawable     // Catch: java.lang.IllegalArgumentException -> Le2
                r1.<init>(r9, r10)     // Catch: java.lang.IllegalArgumentException -> Le2
                r0 = r1
                goto Le6
            Le2:
                r9 = move-exception
                r9.printStackTrace()
            Le6:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.picker.loader.DataLoaderImpl$iconLoader$1.createValue(java.lang.Object):java.lang.Object");
        }
    };

    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.picker.loader.DataLoaderImpl$iconLoader$1] */
    public DataLoaderImpl(AbstractAppDataListFactory abstractAppDataListFactory, PackageManagerHelper packageManagerHelper) {
        this.factory = abstractAppDataListFactory;
        this.packageManagerHelper = packageManagerHelper;
    }

    public final Flow loadIcon(AppInfo appInfo) {
        DataLoaderImpl$iconLoader$1 dataLoaderImpl$iconLoader$1 = this.iconLoader;
        dataLoaderImpl$iconLoader$1.getClass();
        return FlowKt.flowOn(new SafeFlow(new CachedLoader$load$1(dataLoaderImpl$iconLoader$1, appInfo, null)), Dispatchers.Default);
    }
}
