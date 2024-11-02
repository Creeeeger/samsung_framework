package com.android.systemui.bixby2.controller.mediacontrol;

import android.provider.Settings;
import android.view.KeyEvent;
import com.android.systemui.bixby2.CommandActionResponse;
import com.android.systemui.bixby2.actionresult.ActionResults;
import com.android.systemui.bixby2.util.AudioManagerWrapper;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PlayLastSongController extends MediaCommandType {
    public static final Companion Companion = new Companion(null);
    private static final String YOUTUBE_PACKAGE = "com.google.android.youtube";
    private final int mode;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public PlayLastSongController(int i) {
        this.mode = i;
    }

    private final void dispatchMediaKeyEvent() {
        AudioManagerWrapper audioManagerWrapper = new AudioManagerWrapper(MediaCommandType.Companion.getContext());
        audioManagerWrapper.dispatchMediaKeyEvent(new KeyEvent(0, 126));
        audioManagerWrapper.dispatchMediaKeyEvent(new KeyEvent(1, 126));
    }

    /*  JADX ERROR: NullPointerException in pass: RegionMakerVisitor
        java.lang.NullPointerException: Cannot read field "wordsInUse" because "set" is null
        	at java.base/java.util.BitSet.or(BitSet.java:943)
        	at jadx.core.utils.BlockUtils.getPathCross(BlockUtils.java:759)
        	at jadx.core.utils.BlockUtils.getPathCross(BlockUtils.java:838)
        	at jadx.core.dex.visitors.regions.IfMakerHelper.restructureIf(IfMakerHelper.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:711)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    private final boolean isInstalledApp(java.lang.String r4) {
        /*
            r3 = this;
            com.android.systemui.bixby2.controller.mediacontrol.MediaCommandType$Companion r3 = com.android.systemui.bixby2.controller.mediacontrol.MediaCommandType.Companion
            android.content.Context r3 = r3.getContext()
            android.content.pm.PackageManager r3 = r3.getPackageManager()
            java.lang.String r0 = "/"
            java.lang.String[] r0 = new java.lang.String[]{r0}
            r1 = 6
            r2 = 0
            java.util.List r4 = kotlin.text.StringsKt__StringsKt.split$default(r4, r0, r2, r1)
            java.lang.String[] r0 = new java.lang.String[r2]
            java.lang.Object[] r4 = r4.toArray(r0)
            java.lang.String[] r4 = (java.lang.String[]) r4
            int r0 = r4.length
            r1 = 2
            if (r0 == r1) goto L23
            goto L2a
        L23:
            r4 = r4[r2]     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L2a
            r0 = 4
            r3.getPackageInfo(r4, r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L2a
            r2 = 1
        L2a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.bixby2.controller.mediacontrol.PlayLastSongController.isInstalledApp(java.lang.String):boolean");
    }

    @Override // com.android.systemui.bixby2.controller.mediacontrol.MediaCommandType
    public CommandActionResponse action() {
        String string;
        if (this.mode == 0 && (string = Settings.Secure.getString(MediaCommandType.Companion.getContext().getContentResolver(), "media_button_receiver")) != null) {
            String[] strArr = (String[]) StringsKt__StringsKt.split$default(string, new String[]{","}, 0, 6).toArray(new String[0]);
            if ((strArr.length != 2 && strArr.length != 3) || !isInstalledApp(strArr[0])) {
                return new CommandActionResponse(2, ActionResults.RESULT_MEDIA_NOT_AVAILABLE);
            }
            if (StringsKt__StringsKt.contains(strArr[0], YOUTUBE_PACKAGE, false)) {
                return new CommandActionResponse(2, ActionResults.RESULT_MEDIA_NOT_AVAILABLE);
            }
            String str = strArr[0];
            dispatchMediaKeyEvent();
            return new CommandActionResponse(1, "success");
        }
        return new CommandActionResponse(2, ActionResults.RESULT_MEDIA_NOT_AVAILABLE);
    }

    public final int getMode() {
        return this.mode;
    }
}
