package com.android.systemui.qs.bar;

import android.content.Context;
import android.content.Intent;
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
import com.android.systemui.qs.bar.VideoCallMicModeBar;
import com.android.systemui.qs.pipeline.domain.interactor.PanelInteractor;
import com.android.systemui.util.SettingsHelper;
import com.samsung.android.feature.SemFloatingFeature;
import java.util.Arrays;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class VoIPTranslator implements VideoCallMicModeBar.VideoCallMicModeBarBase {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Context context;
    public boolean isPrerequisiteMet;
    public boolean isVoIPEnabled;
    public final PanelInteractor panelInteractor;
    public final SettingsHelper settingsHelper;
    public final Runnable updateBarVisibilitiesRunnable;
    public final VideoCallMicModeUtil util;
    public View voIPTranslatorButton;
    public LinearLayout voIPTranslatorContainer;
    public TextView voIpTranslatorText;
    public final Uri[] settingsValueList = {Settings.System.getUriFor("voip_translator_enable")};
    public final VoIPTranslator$settingsListener$1 settingsListener = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.qs.bar.VoIPTranslator$settingsListener$1
        @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
        public final void onChanged(Uri uri) {
            if (uri != null && Intrinsics.areEqual(uri, Settings.System.getUriFor("voip_translator_enable"))) {
                VoIPTranslator voIPTranslator = VoIPTranslator.this;
                boolean z = true;
                if (voIPTranslator.settingsHelper.mItemLists.get("voip_translator_enable").getIntValue() != 1) {
                    z = false;
                }
                KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("onChanged() - voip_translator_enable : ", z, "VoIPTranslator");
                voIPTranslator.isVoIPEnabled = z;
                voIPTranslator.isPrerequisiteMet = VoIPTranslator.updatePrerequisite();
                voIPTranslator.updateBarVisibilitiesRunnable.run();
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

    /* JADX WARN: Type inference failed for: r1v4, types: [com.android.systemui.qs.bar.VoIPTranslator$settingsListener$1] */
    public VoIPTranslator(VideoCallMicModeUtil videoCallMicModeUtil, Context context, SettingsHelper settingsHelper, PanelInteractor panelInteractor, Runnable runnable) {
        this.util = videoCallMicModeUtil;
        this.context = context;
        this.settingsHelper = settingsHelper;
        this.panelInteractor = panelInteractor;
        this.updateBarVisibilitiesRunnable = runnable;
    }

    public static boolean updatePrerequisite() {
        boolean z = SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_DISABLE_NATIVE_AI");
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("isPrerequisiteMet: disable native ai: ", z, "VoIPTranslator");
        return !z;
    }

    @Override // com.android.systemui.qs.bar.VideoCallMicModeBar.VideoCallMicModeBarBase
    public final void fini() {
        this.settingsHelper.unregisterCallback(this.settingsListener);
    }

    @Override // com.android.systemui.qs.bar.VideoCallMicModeBar.VideoCallMicModeBarBase
    public final View getButton() {
        return this.voIPTranslatorButton;
    }

    @Override // com.android.systemui.qs.bar.VideoCallMicModeBar.VideoCallMicModeBarBase
    public final void inflate(View view) {
        View inflate = this.util.inflate(R.layout.sec_voip_translator_button, (ViewGroup) view, true);
        if (inflate != null) {
            this.voIPTranslatorContainer = (LinearLayout) inflate.findViewById(R.id.voip_translator_container);
            this.voIpTranslatorText = (TextView) inflate.findViewById(R.id.voip_translator_text);
        } else {
            inflate = null;
        }
        this.voIPTranslatorButton = inflate;
    }

    @Override // com.android.systemui.qs.bar.VideoCallMicModeBar.VideoCallMicModeBarBase
    public final void init() {
        Uri[] uriArr = this.settingsValueList;
        Uri[] uriArr2 = (Uri[]) Arrays.copyOf(uriArr, uriArr.length);
        SettingsHelper settingsHelper = this.settingsHelper;
        settingsHelper.registerCallback(this.settingsListener, uriArr2);
        int intValue = settingsHelper.mItemLists.get("voip_translator_enable").getIntValue();
        boolean z = true;
        if (intValue != 1) {
            z = false;
        }
        this.isVoIPEnabled = z;
        Unit unit = Unit.INSTANCE;
        this.isPrerequisiteMet = updatePrerequisite();
    }

    @Override // com.android.systemui.qs.bar.VideoCallMicModeBar.VideoCallMicModeBarBase
    public final boolean isEnabled() {
        return this.isVoIPEnabled;
    }

    @Override // com.android.systemui.qs.bar.VideoCallMicModeBar.VideoCallMicModeBarBase
    public final void setClickListener(final Function1 function1) {
        View view = this.voIPTranslatorButton;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qs.bar.VoIPTranslator$setClickListener$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    Log.d("VoIPTranslator", "onClicked");
                    VoIPTranslator voIPTranslator = VoIPTranslator.this;
                    int i = VoIPTranslator.$r8$clinit;
                    voIPTranslator.getClass();
                    Intent intent = new Intent("com.samsung.android.callassistant.action.START_VOIP_TRANSLATOR");
                    intent.setPackage("com.samsung.android.callassistant");
                    voIPTranslator.panelInteractor.collapsePanels();
                    voIPTranslator.context.sendBroadcast(intent);
                    function1.invoke("QPPE1032");
                }
            });
        }
    }

    @Override // com.android.systemui.qs.bar.VideoCallMicModeBar.VideoCallMicModeBarBase
    public final void updateFontScale() {
        TextView textView = this.voIpTranslatorText;
        this.util.getClass();
        FontSizeUtils.updateFontSize(textView, R.dimen.sec_style_qs_tile_text_size, 0.8f, 1.3f);
    }

    @Override // com.android.systemui.qs.bar.VideoCallMicModeBar.VideoCallMicModeBarBase
    public final void updateHeightMargins(boolean z, VideoCallMicModeStates videoCallMicModeStates, VideoCallMicModeResources videoCallMicModeResources) {
        int i;
        int i2;
        LinearLayout linearLayout = this.voIPTranslatorContainer;
        if (linearLayout != null) {
            linearLayout.setOrientation(!z ? 1 : 0);
        }
        View view = this.voIPTranslatorButton;
        VideoCallMicModeUtil videoCallMicModeUtil = this.util;
        if (view != null) {
            if (z) {
                i = videoCallMicModeResources.defaultStartPadding;
            } else {
                i = videoCallMicModeResources.iconPadding;
            }
            int i3 = 0;
            int i4 = videoCallMicModeResources.defaultMargin;
            boolean z2 = videoCallMicModeStates.micModeEnabled;
            if (z && !z2) {
                i2 = i4;
            } else {
                i2 = 0;
            }
            if (z && !z2) {
                i3 = i4;
            }
            videoCallMicModeUtil.getClass();
            view.setPaddingRelative(i, view.getPaddingTop(), view.getPaddingEnd(), view.getPaddingBottom());
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
            layoutParams.setMarginStart(i2);
            layoutParams.setMarginEnd(i3);
            view.setLayoutParams(layoutParams);
        }
        LinearLayout linearLayout2 = this.voIPTranslatorContainer;
        if (linearLayout2 != null) {
            videoCallMicModeUtil.getClass();
            linearLayout2.setPaddingRelative(videoCallMicModeResources.textContainerPaddingStart, linearLayout2.getPaddingTop(), videoCallMicModeResources.textContainerPaddingEnd, linearLayout2.getPaddingBottom());
        }
    }

    @Override // com.android.systemui.qs.bar.VideoCallMicModeBar.VideoCallMicModeBarBase
    public final void updateVisibilities(VideoCallMicModeStates videoCallMicModeStates) {
        int i;
        View view = this.voIPTranslatorButton;
        if (view != null) {
            if (this.isPrerequisiteMet && this.isVoIPEnabled && !videoCallMicModeStates.videoCallEnabled) {
                i = 0;
            } else {
                i = 8;
            }
            view.setVisibility(i);
        }
    }

    @Override // com.android.systemui.qs.bar.VideoCallMicModeBar.VideoCallMicModeBarBase
    public final void updateContents() {
    }
}
