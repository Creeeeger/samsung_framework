package com.android.systemui.statusbar.notification.logging;

import android.view.View;
import android.view.ViewGroup;
import com.android.systemui.statusbar.notification.logging.NotificationMemoryViewWalker;
import java.util.HashSet;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationMemoryViewWalker {
    public static final NotificationMemoryViewWalker INSTANCE = new NotificationMemoryViewWalker();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class UsageBuilder {
        public int customViews;
        public int largeIcon;
        public int smallIcon;
        public int softwareBitmaps;
        public int style;
        public int systemIcons;
    }

    private NotificationMemoryViewWalker() {
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void computeViewHierarchyUse(android.view.ViewGroup r9, com.android.systemui.statusbar.notification.logging.NotificationMemoryViewWalker.UsageBuilder r10, java.util.HashSet r11) {
        /*
            kotlin.sequences.SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1 r9 = com.android.systemui.util.ConvenienceExtensionsKt.getChildren(r9)
            java.util.Iterator r9 = r9.iterator()
        L8:
            r0 = r9
            kotlin.sequences.SequenceBuilderIterator r0 = (kotlin.sequences.SequenceBuilderIterator) r0
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto Ld7
            java.lang.Object r0 = r0.next()
            android.view.View r0 = (android.view.View) r0
            boolean r1 = r0 instanceof android.view.ViewGroup
            if (r1 == 0) goto L21
            android.view.ViewGroup r0 = (android.view.ViewGroup) r0
            computeViewHierarchyUse(r0, r10, r11)
            goto L8
        L21:
            boolean r1 = r0 instanceof android.widget.ImageView
            if (r1 != 0) goto L26
            goto L8
        L26:
            r1 = r0
            android.widget.ImageView r1 = (android.widget.ImageView) r1
            android.graphics.drawable.Drawable r2 = r1.getDrawable()
            if (r2 != 0) goto L30
            goto L8
        L30:
            int r3 = java.lang.System.identityHashCode(r2)
            java.lang.Integer r4 = java.lang.Integer.valueOf(r3)
            boolean r4 = r11.contains(r4)
            if (r4 == 0) goto L3f
            goto L8
        L3f:
            boolean r4 = r2 instanceof android.graphics.drawable.BitmapDrawable
            r5 = 0
            if (r4 == 0) goto L68
            r6 = r2
            android.graphics.drawable.BitmapDrawable r6 = (android.graphics.drawable.BitmapDrawable) r6
            android.graphics.Bitmap r6 = r6.getBitmap()
            if (r6 == 0) goto L68
            int r7 = java.lang.System.identityHashCode(r6)
            java.lang.Integer r8 = java.lang.Integer.valueOf(r7)
            boolean r8 = r11.contains(r8)
            if (r8 == 0) goto L5c
            goto L68
        L5c:
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            r11.add(r7)
            int r6 = r6.getAllocationByteCount()
            goto L69
        L68:
            r6 = r5
        L69:
            int r1 = r1.getId()
            switch(r1) {
                case 16908294: goto L8c;
                case 16908770: goto L86;
                case 16908841: goto L80;
                case 16908945: goto L8c;
                case 16909021: goto L86;
                case 16909034: goto L86;
                case 16909239: goto L8c;
                case 16909466: goto L86;
                case 16909534: goto L86;
                case 16909565: goto L7a;
                default: goto L70;
            }
        L70:
            r1 = 3
            java.lang.String r7 = "NotificationMemory"
            boolean r1 = android.util.Log.isLoggable(r7, r1)
            if (r1 == 0) goto Lad
            goto L92
        L7a:
            int r0 = r10.largeIcon
            int r0 = r0 + r6
            r10.largeIcon = r0
            goto Lb2
        L80:
            int r0 = r10.style
            int r0 = r0 + r6
            r10.style = r0
            goto Lb2
        L86:
            int r0 = r10.systemIcons
            int r0 = r0 + r6
            r10.systemIcons = r0
            goto Lb2
        L8c:
            int r0 = r10.smallIcon
            int r0 = r0 + r6
            r10.smallIcon = r0
            goto Lb2
        L92:
            int r1 = r0.getId()
            r8 = -1
            if (r1 != r8) goto L9c
            java.lang.String r0 = "no-id"
            goto La8
        L9c:
            android.content.res.Resources r1 = r0.getResources()
            int r0 = r0.getId()
            java.lang.String r0 = r1.getResourceName(r0)
        La8:
            java.lang.String r1 = "Custom view: "
            android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(r1, r0, r7)
        Lad:
            int r0 = r10.customViews
            int r0 = r0 + r6
            r10.customViews = r0
        Lb2:
            if (r4 == 0) goto Lc7
            android.graphics.drawable.BitmapDrawable r2 = (android.graphics.drawable.BitmapDrawable) r2
            android.graphics.Bitmap r0 = r2.getBitmap()
            if (r0 == 0) goto Lc1
            android.graphics.Bitmap$Config r0 = r0.getConfig()
            goto Lc2
        Lc1:
            r0 = 0
        Lc2:
            android.graphics.Bitmap$Config r1 = android.graphics.Bitmap.Config.HARDWARE
            if (r0 == r1) goto Lc7
            r5 = 1
        Lc7:
            if (r5 == 0) goto Lce
            int r0 = r10.softwareBitmaps
            int r0 = r0 + r6
            r10.softwareBitmaps = r0
        Lce:
            java.lang.Integer r0 = java.lang.Integer.valueOf(r3)
            r11.add(r0)
            goto L8
        Ld7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.logging.NotificationMemoryViewWalker.computeViewHierarchyUse(android.view.ViewGroup, com.android.systemui.statusbar.notification.logging.NotificationMemoryViewWalker$UsageBuilder, java.util.HashSet):void");
    }

    public static NotificationViewUsage getViewUsage(ViewType viewType, View[] viewArr, HashSet hashSet) {
        Lazy lazy = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.statusbar.notification.logging.NotificationMemoryViewWalker$getViewUsage$usageBuilder$1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return new NotificationMemoryViewWalker.UsageBuilder();
            }
        });
        int length = viewArr.length;
        int i = 0;
        while (true) {
            ViewGroup viewGroup = null;
            if (i >= length) {
                break;
            }
            View view = viewArr[i];
            if (view instanceof ViewGroup) {
                viewGroup = (ViewGroup) view;
            }
            if (viewGroup != null) {
                UsageBuilder usageBuilder = (UsageBuilder) lazy.getValue();
                INSTANCE.getClass();
                computeViewHierarchyUse(viewGroup, usageBuilder, hashSet);
            }
            i++;
        }
        if (!lazy.isInitialized()) {
            return null;
        }
        UsageBuilder usageBuilder2 = (UsageBuilder) lazy.getValue();
        return new NotificationViewUsage(viewType, usageBuilder2.smallIcon, usageBuilder2.largeIcon, usageBuilder2.systemIcons, usageBuilder2.style, usageBuilder2.customViews, usageBuilder2.softwareBitmaps);
    }

    public static /* synthetic */ NotificationViewUsage getViewUsage$default(ViewType viewType, View[] viewArr) {
        return getViewUsage(viewType, viewArr, new HashSet());
    }
}
