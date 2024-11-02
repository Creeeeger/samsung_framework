package com.android.systemui.statusbar.phone;

import android.graphics.Color;
import android.util.Log;
import androidx.picker3.widget.SeslColorSpectrumView$$ExternalSyntheticOutline0;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.blur.SecQpBlurController;
import com.android.systemui.logging.PanelScreenShotLogger;
import com.android.systemui.util.ViewController;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecPanelBackgroundController extends ViewController implements PanelScreenShotLogger.LogProvider {
    public SecQpBlurController.AnonymousClass2 mBlurUtils;
    public float mMaxAlpha;
    public int mStatusBarState;

    public SecPanelBackgroundController(SecPanelBackground secPanelBackground) {
        super(secPanelBackground);
        this.mMaxAlpha = 0.3f;
        updatePanel();
        updateBackgroundColor();
        ((SecPanelBackground) this.mView).animate().translationY(0.0f).setDuration(200L).start();
        PanelScreenShotLogger.INSTANCE.addLogProvider("SecPanelBackground", this);
    }

    @Override // com.android.systemui.logging.PanelScreenShotLogger.LogProvider
    public final ArrayList gatherState() {
        ArrayList arrayList = new ArrayList();
        int color = ((SecPanelBackground) this.mView).mContext.getColor(R.color.open_theme_qp_bg_color);
        arrayList.add("SecPanelBackgroundController ============================================= ");
        arrayList.add("  mMaxAlpha = " + this.mMaxAlpha + "  currentAlpha = " + ((SecPanelBackground) this.mView).getAlpha() + "  visibility = " + ((SecPanelBackground) this.mView).getVisibility() + " DIM color = 0x" + Integer.toHexString(color));
        arrayList.add("============================================================== ");
        return arrayList;
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewAttached() {
        updateBackgroundVisibility();
    }

    public final void updateBackgroundColor() {
        int color = ((SecPanelBackground) this.mView).mContext.getColor(R.color.open_theme_qp_bg_color);
        int i = (color >> 16) & 255;
        int i2 = (color >> 8) & 255;
        int i3 = color & 255;
        ((SecPanelBackground) this.mView).setBackgroundColor(Color.rgb(i, i2, i3));
        Log.d("SecPanelBackground", "DIM color = " + i + " " + i2 + " " + i3);
    }

    public final void updateBackgroundVisibility() {
        boolean z;
        String str;
        SecQpBlurController.AnonymousClass2 anonymousClass2 = this.mBlurUtils;
        if (anonymousClass2 == null) {
            Log.w("SecPanelBackground", "updateBackgroundVisibility: mBlurUtils is null");
            return;
        }
        boolean z2 = QpRune.QUICK_PANEL_BLUR_DEFAULT;
        SecQpBlurController secQpBlurController = SecQpBlurController.this;
        int i = 0;
        if (!z2 ? !(!QpRune.QUICK_PANEL_BLUR_MASSIVE || (!secQpBlurController.mIsBlurReduced && !secQpBlurController.mSettingsHelper.isUltraPowerSavingMode() && !this.mBlurUtils.hasCustomColorForPanelBG())) : !(!secQpBlurController.mIsBlurReduced && !secQpBlurController.shouldUseBlurFilter() && !this.mBlurUtils.hasCustomColorForPanelBG())) {
            z = true;
        } else {
            z = false;
        }
        SecPanelBackground secPanelBackground = (SecPanelBackground) this.mView;
        if (!z) {
            i = 8;
        }
        secPanelBackground.setVisibility(i);
        if (z) {
            str = "VISIBLE";
        } else {
            str = "GONE";
        }
        Log.d("SecPanelBackground", "DIM visibility = ".concat(str));
    }

    public final void updatePanel() {
        updateBackgroundVisibility();
        SecQpBlurController.AnonymousClass2 anonymousClass2 = this.mBlurUtils;
        if (anonymousClass2 != null) {
            if (SecQpBlurController.this.mIsBlurReduced) {
                this.mMaxAlpha = 1.0f;
            } else if (anonymousClass2.hasCustomColorForPanelBG()) {
                this.mMaxAlpha = ((((SecPanelBackground) this.mView).mContext.getColor(R.color.open_theme_qp_bg_color) >> 24) & 255) / 255.0f;
            } else {
                this.mMaxAlpha = 0.3f;
            }
            SeslColorSpectrumView$$ExternalSyntheticOutline0.m(new StringBuilder("DIM mMaxAlpha = "), this.mMaxAlpha, "SecPanelBackground");
        }
        updateBackgroundColor();
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewDetached() {
    }
}
