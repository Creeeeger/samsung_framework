package com.samsung.android.biometrics.app.setting.fingerprint;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Pair;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.samsung.android.biometrics.app.setting.DisplayStateManager;
import com.samsung.android.biometrics.app.setting.DisplayStateManager$Injector$$ExternalSyntheticOutline0;
import com.samsung.android.biometrics.app.setting.FocusableWindow;
import com.samsung.android.biometrics.app.setting.R;
import com.samsung.android.biometrics.app.setting.SettingHelper;
import com.samsung.android.biometrics.app.setting.Utils;

/* loaded from: classes.dex */
public final class UdfpsAuthGuideWindow extends FocusableWindow implements View.OnKeyListener {
    private View mBottomView;
    private final UdfpsWindowCallback mCallback;
    private final DisplayStateManager mDisplayStateManager;
    private ImageView mGuideImage;
    private String mGuideString;
    private TextView mGuideText;
    private boolean mKeyDownPressed;
    private LinearLayout mLayout;
    private final UdfpsInfo mSensorInfo;

    @SuppressLint({"InflateParams"})
    public UdfpsAuthGuideWindow(Context context, DisplayStateManager displayStateManager, UdfpsWindowCallback udfpsWindowCallback, Pair<CharSequence, Drawable> pair, UdfpsInfo udfpsInfo) {
        super(context);
        this.mCallback = udfpsWindowCallback;
        this.mSensorInfo = udfpsInfo;
        this.mDisplayStateManager = displayStateManager;
        try {
            View inflate = getLayoutInflater().inflate(R.layout.sem_fingerprint_bg_view, (ViewGroup) null);
            this.mBaseView = inflate;
            this.mLayout = (LinearLayout) inflate.findViewById(R.id.sem_fingerprint_bg_layout);
            this.mBottomView = this.mBaseView.findViewById(R.id.sem_fingerprint_bg_bottom_view);
            this.mGuideString = getContext().getString(R.string.sem_fingerprint_bg_ready_description);
            ((TextView) this.mBaseView.findViewById(R.id.sem_fingerprint_bg_title)).setText(R.string.sem_fingerprint_bg_title);
            TextView textView = (TextView) this.mBaseView.findViewById(R.id.sem_fingerprint_bg_guide_text);
            this.mGuideText = textView;
            textView.setText(R.string.sem_fingerprint_bg_ready_description);
            ImageView imageView = (ImageView) this.mBaseView.findViewById(R.id.sem_fingerprint_bg_error_image);
            this.mGuideImage = imageView;
            imageView.setVisibility(4);
            if (!TextUtils.isEmpty((CharSequence) pair.first)) {
                ((TextView) this.mBaseView.findViewById(R.id.sem_fingerprint_app_title)).setText((CharSequence) pair.first);
            }
            if (pair.second != null) {
                ImageView imageView2 = (ImageView) this.mBaseView.findViewById(R.id.sem_fingerprint_app_icon);
                imageView2.setImageDrawable((Drawable) pair.second);
                imageView2.setVisibility(0);
            }
            Button button = (Button) this.mBaseView.findViewById(R.id.sem_fingerprint_bg_cancel_button);
            button.setBackgroundResource(R.drawable.sem_cancel_button_shape);
            button.setText(android.R.string.cancel);
            Utils.setMaxTextScaleSize(button, R.dimen.biometric_prompt_verification_negative_text_size);
            button.setOnClickListener(new View.OnClickListener() { // from class: com.samsung.android.biometrics.app.setting.fingerprint.UdfpsAuthGuideWindow$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UdfpsAuthGuideWindow.this.mCallback.onUserCancel(3);
                }
            });
            this.mBaseView.setOnKeyListener(this);
            if (udfpsInfo.isNaviBarHide() && !SettingHelper.isNavigationBarHidden(getContext())) {
                this.mBaseView.setSystemUiVisibility(18874368);
            }
            this.mBaseView.setFocusableInTouchMode(true);
            this.mBaseView.requestFocus();
        } catch (Exception e) {
            DisplayStateManager$Injector$$ExternalSyntheticOutline0.m(e, new StringBuilder("UdfpsBackgroundGuideWindow: "), "BSS_SysUiWindow.B");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
    
        if (r9 != 3) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void updateLayout(int r9) {
        /*
            r8 = this;
            android.widget.LinearLayout r0 = r8.mLayout
            if (r0 == 0) goto L74
            android.view.View r0 = r8.mBottomView
            if (r0 != 0) goto L9
            goto L74
        L9:
            android.content.Context r0 = r8.getContext()
            android.graphics.Point r0 = com.samsung.android.biometrics.app.setting.Utils.getMaximumWindowSize(r0)
            android.content.Context r1 = r8.getContext()
            android.util.DisplayMetrics r1 = com.samsung.android.biometrics.app.setting.Utils.getDisplayMetrics(r1)
            android.view.View r2 = r8.mBottomView
            android.view.ViewGroup$LayoutParams r2 = r2.getLayoutParams()
            android.widget.LinearLayout$LayoutParams r2 = (android.widget.LinearLayout.LayoutParams) r2
            android.widget.LinearLayout r3 = r8.mLayout
            android.view.ViewGroup$LayoutParams r3 = r3.getLayoutParams()
            android.widget.RelativeLayout$LayoutParams r3 = (android.widget.RelativeLayout.LayoutParams) r3
            r4 = 2
            if (r9 == 0) goto L4f
            r5 = 1
            if (r9 == r5) goto L35
            if (r9 == r4) goto L4f
            r4 = 3
            if (r9 == r4) goto L35
            goto L6a
        L35:
            float r9 = r1.density
            double r4 = (double) r9
            r6 = 4625196817309499392(0x4030000000000000, double:16.0)
            double r6 = r6 * r4
            float r9 = (float) r6
            int r9 = java.lang.Math.round(r9)
            r2.height = r9
            int r9 = r0.x
            double r0 = (double) r9
            r4 = 4602729259488473462(0x3fe02de00d1b7176, double:0.5056)
            double r0 = r0 * r4
            int r9 = (int) r0
            r3.width = r9
            goto L6a
        L4f:
            com.samsung.android.biometrics.app.setting.fingerprint.UdfpsInfo r9 = r8.mSensorInfo
            int r9 = r9.getMarginBottom()
            com.samsung.android.biometrics.app.setting.fingerprint.UdfpsInfo r0 = r8.mSensorInfo
            int r0 = r0.getAreaWidth()
            int r0 = r0 / r4
            int r0 = r0 + r9
            com.samsung.android.biometrics.app.setting.fingerprint.UdfpsInfo r9 = r8.mSensorInfo
            int r9 = r9.getImageSize()
            int r9 = r9 / r4
            int r9 = r9 + r0
            r2.height = r9
            r9 = -1
            r3.width = r9
        L6a:
            android.view.View r9 = r8.mBottomView
            r9.setLayoutParams(r2)
            android.widget.LinearLayout r8 = r8.mLayout
            r8.setLayoutParams(r3)
        L74:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.biometrics.app.setting.fingerprint.UdfpsAuthGuideWindow.updateLayout(int):void");
    }

    @Override // com.samsung.android.biometrics.app.setting.SysUiWindow
    public final WindowManager.LayoutParams getLayoutParams() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, 2618, android.R.drawable.pointer_wait_vector_68, -3);
        layoutParams.layoutInDisplayCutoutMode = 3;
        layoutParams.dimAmount = 0.7f;
        layoutParams.privateFlags |= 16;
        layoutParams.setFitInsetsIgnoringVisibility(true);
        layoutParams.setFitInsetsTypes(layoutParams.getFitInsetsTypes() & (~WindowInsets.Type.statusBars()));
        layoutParams.setTitle("FP BG" + hashCode());
        return layoutParams;
    }

    @Override // com.samsung.android.biometrics.app.setting.FocusableWindow, com.samsung.android.biometrics.app.setting.SysUiWindow
    public final String getLogTag() {
        return "BSS_SysUiWindow.B";
    }

    public final void init() {
        updateLayout(this.mDisplayStateManager.getCurrentRotation());
    }

    @Override // com.samsung.android.biometrics.app.setting.SysUiWindow
    public final void onConfigurationChanged(Configuration configuration) {
        updateLayout(this.mDisplayStateManager.getCurrentRotation());
    }

    @Override // com.samsung.android.biometrics.app.setting.FocusableWindow
    protected final void onFocusLost() {
        this.mCallback.onUserCancel(1);
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (i != 4) {
            return false;
        }
        if (keyEvent.getAction() == 0 && !this.mKeyDownPressed) {
            this.mKeyDownPressed = true;
        } else if (keyEvent.getAction() == 0) {
            this.mKeyDownPressed = false;
        } else if (keyEvent.getAction() == 1 && this.mKeyDownPressed) {
            this.mKeyDownPressed = false;
            this.mCallback.onUserCancel(2);
        }
        return true;
    }

    @Override // com.samsung.android.biometrics.app.setting.SysUiWindow
    public final void onRotationInfoChanged(int i) {
        updateLayout(i);
    }

    @Override // com.samsung.android.biometrics.app.setting.FocusableWindow
    protected final void onSystemDialogClosed() {
        this.mCallback.onUserCancel(4);
    }

    public final void resetMessage() {
        TextView textView = this.mGuideText;
        if (textView != null) {
            textView.setText(this.mGuideString);
        }
        ImageView imageView = this.mGuideImage;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
    }

    public final void showHelpMessage(int i, String str) {
        ImageView imageView = this.mGuideImage;
        if (imageView != null) {
            if (i == 0) {
                imageView.setVisibility(4);
            } else {
                imageView.setVisibility(0);
                ImageView imageView2 = this.mGuideImage;
                if (imageView2 != null) {
                    if (i == -1) {
                        imageView2.setImageResource(R.drawable.sem_fingerprint_no_match);
                    } else if (i == 5) {
                        imageView2.setImageResource(R.drawable.sem_fingerprint_error_timeout);
                    } else if (i == 1003) {
                        imageView2.setImageResource(R.drawable.sem_fingerprint_error_press_long);
                    } else if (i == 1 || i == 2) {
                        imageView2.setImageResource(R.drawable.sem_fingerprint_error_move);
                    } else if (i == 3) {
                        imageView2.setImageResource(R.drawable.sem_fingerprint_error_wipe);
                    }
                }
            }
        }
        if (this.mGuideText == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.mGuideText.setText(str);
    }
}
