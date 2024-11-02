package com.android.systemui.qs.bar;

import android.content.Context;
import android.net.Uri;
import android.provider.Settings;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.systemui.FontSizeUtils;
import com.android.systemui.R;
import com.android.systemui.qs.SecQSPanelController;
import com.android.systemui.qs.SecQSPanelControllerBase;
import com.android.systemui.qs.bar.VideoCallMicModeBar;
import com.android.systemui.qs.bar.micmode.MicModeItemFactory;
import com.android.systemui.util.SettingsHelper;
import dagger.Lazy;
import java.util.Arrays;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MicMode implements VideoCallMicModeBar.VideoCallMicModeBarBase {
    public View micModeButton;
    public LinearLayout micModeContainer;
    public final MicModeDetailAdapter micModeDetailAdapter;
    public TextView micModeEffect;
    public boolean micModeEnable;
    public TextView micModeText;
    public final Lazy qsPanelControllerLazy;
    public final SettingsHelper settingsHelper;
    public final Runnable updateBarContentsRunnable;
    public final Runnable updateBarVisibilitiesRunnable;
    public final VideoCallMicModeUtil util;
    public final Uri[] settingsValueList = {Settings.System.getUriFor("mic_mode_enable"), Settings.System.getUriFor("mic_mode_effect")};
    public final MicMode$settingsListener$1 settingsListener = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.qs.bar.MicMode$settingsListener$1
        @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
        public final void onChanged(Uri uri) {
            SecQSPanelController secQSPanelController;
            SecQSPanelControllerBase.Record record;
            if (uri == null) {
                return;
            }
            boolean areEqual = Intrinsics.areEqual(uri, Settings.System.getUriFor("mic_mode_enable"));
            MicMode micMode = MicMode.this;
            if (areEqual) {
                boolean z = true;
                if (micMode.settingsHelper.mItemLists.get("mic_mode_enable").getIntValue() != 1) {
                    z = false;
                }
                KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("onChanged() - mic_mode_enable : ", z, "MicMode");
                micMode.micModeEnable = z;
                if (!z && (record = (secQSPanelController = (SecQSPanelController) micMode.qsPanelControllerLazy.get()).mDetailRecord) != null && record.mDetailAdapter == micMode.micModeDetailAdapter) {
                    secQSPanelController.showDetail(record, false);
                }
                micMode.updateBarVisibilitiesRunnable.run();
            }
            if (Intrinsics.areEqual(uri, Settings.System.getUriFor("mic_mode_effect"))) {
                Log.d("MicMode", "onChanged() - mic_mode_effect : ");
                micMode.updateBarContentsRunnable.run();
            }
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Type inference failed for: r1v5, types: [com.android.systemui.qs.bar.MicMode$settingsListener$1] */
    public MicMode(VideoCallMicModeUtil videoCallMicModeUtil, Context context, Lazy lazy, SettingsHelper settingsHelper, Runnable runnable, Runnable runnable2) {
        this.util = videoCallMicModeUtil;
        this.qsPanelControllerLazy = lazy;
        this.settingsHelper = settingsHelper;
        this.updateBarVisibilitiesRunnable = runnable;
        this.updateBarContentsRunnable = runnable2;
        this.micModeDetailAdapter = new MicModeDetailAdapter(context);
    }

    @Override // com.android.systemui.qs.bar.VideoCallMicModeBar.VideoCallMicModeBarBase
    public final void fini() {
        this.settingsHelper.unregisterCallback(this.settingsListener);
    }

    @Override // com.android.systemui.qs.bar.VideoCallMicModeBar.VideoCallMicModeBarBase
    public final View getButton() {
        return this.micModeButton;
    }

    @Override // com.android.systemui.qs.bar.VideoCallMicModeBar.VideoCallMicModeBarBase
    public final void inflate(View view) {
        View inflate = this.util.inflate(R.layout.sec_mic_mode_button, (ViewGroup) view, true);
        if (inflate != null) {
            this.micModeText = (TextView) inflate.findViewById(R.id.mic_mode_text);
            this.micModeEffect = (TextView) inflate.findViewById(R.id.mic_mode_effect);
            this.micModeContainer = (LinearLayout) inflate.findViewById(R.id.mic_mode_container);
        } else {
            inflate = null;
        }
        this.micModeButton = inflate;
    }

    @Override // com.android.systemui.qs.bar.VideoCallMicModeBar.VideoCallMicModeBarBase
    public final void init() {
        Uri[] uriArr = this.settingsValueList;
        Uri[] uriArr2 = (Uri[]) Arrays.copyOf(uriArr, uriArr.length);
        SettingsHelper settingsHelper = this.settingsHelper;
        settingsHelper.registerCallback(this.settingsListener, uriArr2);
        int intValue = settingsHelper.mItemLists.get("mic_mode_enable").getIntValue();
        boolean z = true;
        if (intValue != 1) {
            z = false;
        }
        this.micModeEnable = z;
    }

    @Override // com.android.systemui.qs.bar.VideoCallMicModeBar.VideoCallMicModeBarBase
    public final boolean isEnabled() {
        return this.micModeEnable;
    }

    @Override // com.android.systemui.qs.bar.VideoCallMicModeBar.VideoCallMicModeBarBase
    public final void setClickListener(final Function1 function1) {
        View view = this.micModeButton;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qs.bar.MicMode$setClickListener$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    Log.d("MicMode", "onClicked");
                    SecQSPanelController secQSPanelController = (SecQSPanelController) MicMode.this.qsPanelControllerLazy.get();
                    MicModeDetailAdapter micModeDetailAdapter = MicMode.this.micModeDetailAdapter;
                    secQSPanelController.getClass();
                    SecQSPanelControllerBase.Record record = new SecQSPanelControllerBase.Record(0);
                    record.mDetailAdapter = micModeDetailAdapter;
                    secQSPanelController.showDetail(record, true);
                    function1.invoke("QPPE1029");
                }
            });
        }
    }

    @Override // com.android.systemui.qs.bar.VideoCallMicModeBar.VideoCallMicModeBarBase
    public final void updateContents() {
        int intValue = this.settingsHelper.mItemLists.get("mic_mode_effect").getIntValue();
        TextView textView = this.micModeEffect;
        if (textView != null) {
            String text = MicModeItemFactory.create(intValue, this.micModeDetailAdapter.mContext).getText();
            Log.d("MicMode", "updateContents " + text);
            textView.setText(text);
        }
    }

    @Override // com.android.systemui.qs.bar.VideoCallMicModeBar.VideoCallMicModeBarBase
    public final void updateFontScale() {
        TextView textView = this.micModeText;
        this.util.getClass();
        FontSizeUtils.updateFontSize(textView, R.dimen.sec_style_qs_tile_text_size, 0.8f, 1.3f);
        FontSizeUtils.updateFontSize(this.micModeEffect, R.dimen.sec_style_qs_tile_second_text_size, 0.8f, 1.3f);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0032 A[ADDED_TO_REGION] */
    @Override // com.android.systemui.qs.bar.VideoCallMicModeBar.VideoCallMicModeBarBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateHeightMargins(boolean r8, com.android.systemui.qs.bar.VideoCallMicModeStates r9, com.android.systemui.qs.bar.VideoCallMicModeResources r10) {
        /*
            r7 = this;
            android.widget.LinearLayout r0 = r7.micModeContainer
            if (r0 != 0) goto L5
            goto La
        L5:
            r1 = r8 ^ 1
            r0.setOrientation(r1)
        La:
            android.view.View r0 = r7.micModeButton
            com.android.systemui.qs.bar.VideoCallMicModeUtil r1 = r7.util
            if (r0 == 0) goto L59
            if (r8 == 0) goto L15
            int r2 = r10.defaultStartPadding
            goto L17
        L15:
            int r2 = r10.iconPadding
        L17:
            r3 = 0
            int r4 = r10.defaultMargin
            boolean r5 = r9.videoCallEnabled
            boolean r9 = r9.voIpTranslatorEnabled
            if (r8 == 0) goto L27
            if (r5 != 0) goto L2e
            if (r9 == 0) goto L25
            goto L2e
        L25:
            r6 = r4
            goto L30
        L27:
            if (r5 != 0) goto L2e
            if (r9 == 0) goto L2c
            goto L2e
        L2c:
            r6 = r3
            goto L30
        L2e:
            int r6 = r10.betweenMargin
        L30:
            if (r8 == 0) goto L38
            if (r5 != 0) goto L38
            if (r9 == 0) goto L37
            goto L38
        L37:
            r3 = r4
        L38:
            r1.getClass()
            int r8 = r0.getPaddingTop()
            int r9 = r0.getPaddingEnd()
            int r4 = r0.getPaddingBottom()
            r0.setPaddingRelative(r2, r8, r9, r4)
            android.view.ViewGroup$LayoutParams r8 = r0.getLayoutParams()
            android.widget.LinearLayout$LayoutParams r8 = (android.widget.LinearLayout.LayoutParams) r8
            r8.setMarginStart(r6)
            r8.setMarginEnd(r3)
            r0.setLayoutParams(r8)
        L59:
            android.widget.LinearLayout r8 = r7.micModeContainer
            if (r8 == 0) goto L6f
            r1.getClass()
            int r9 = r8.getPaddingTop()
            int r0 = r8.getPaddingBottom()
            int r2 = r10.textContainerPaddingStart
            int r3 = r10.textContainerPaddingEnd
            r8.setPaddingRelative(r2, r9, r3, r0)
        L6f:
            android.widget.TextView r7 = r7.micModeEffect
            if (r7 == 0) goto L87
            r1.getClass()
            int r8 = r7.getPaddingTop()
            int r9 = r7.getPaddingEnd()
            int r0 = r7.getPaddingBottom()
            int r10 = r10.startPadding
            r7.setPaddingRelative(r10, r8, r9, r0)
        L87:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.bar.MicMode.updateHeightMargins(boolean, com.android.systemui.qs.bar.VideoCallMicModeStates, com.android.systemui.qs.bar.VideoCallMicModeResources):void");
    }

    @Override // com.android.systemui.qs.bar.VideoCallMicModeBar.VideoCallMicModeBarBase
    public final void updateVisibilities(VideoCallMicModeStates videoCallMicModeStates) {
        int i;
        View view = this.micModeButton;
        if (view != null) {
            if (this.micModeEnable) {
                i = 0;
            } else {
                i = 8;
            }
            view.setVisibility(i);
        }
    }
}
