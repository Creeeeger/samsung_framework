package com.android.keyguard;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.HapticFeedbackConstants;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.android.systemui.widget.SystemUITextView;
import com.android.systemui.widget.SystemUIWidgetUtil;
import java.io.File;
import java.util.Objects;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class SecNumPadKey extends NumPadKey {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final AnonymousClass1 mAccessibilityDelegate;
    public ImageView mDigitImage;
    public boolean mIsImagePinLock;
    public final SecNumPadKey$$ExternalSyntheticLambda0 mOnSettingsChangedCallback;
    public RippleDrawable mRipple;
    public final SettingsHelper mSettingsHelper;

    public SecNumPadKey(Context context) {
        this(context, null);
    }

    @Override // com.android.keyguard.NumPadKey
    public final void doHapticKeyClick() {
        int i;
        if (LsRune.SECURITY_HAPTIC_FEEDBACK_ON_DC_MOTOR && this.mSettingsHelper.isHapticFeedbackEnabled()) {
            i = 3;
        } else {
            i = 1;
        }
        performHapticFeedback(HapticFeedbackConstants.semGetVibrationIndex(1), i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mSettingsHelper.registerCallback(this.mOnSettingsChangedCallback, Settings.System.getUriFor("accessibility_reduce_transparency"));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mSettingsHelper.unregisterCallback(this.mOnSettingsChangedCallback);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        setAccessibilityDelegate(this.mAccessibilityDelegate);
    }

    @Override // com.android.keyguard.NumPadKey, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (LsRune.SECURITY_OPEN_THEME && this.mIsImagePinLock) {
            int measuredHeight = this.mDigitImage.getMeasuredHeight();
            int height = (getHeight() / 2) - (measuredHeight / 2);
            int width = (getWidth() / 2) - (this.mDigitImage.getMeasuredWidth() / 2);
            ImageView imageView = this.mDigitImage;
            imageView.layout(width, height, imageView.getMeasuredWidth() + width, measuredHeight + height);
            return;
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    public void updateDigitTextSize() {
        this.mDigitText.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.kg_pin_num_pad_font_size));
    }

    public void updateKlondikeTextSize() {
        this.mKlondikeText.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.kg_pin_klondike_font_size));
    }

    public final void updateViewStyle() {
        boolean z;
        int i;
        int i2;
        String str;
        Typeface create;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        boolean z2;
        boolean z3 = false;
        if (this.mSettingsHelper.isOpenThemeLook() && getResources().getBoolean(R.bool.theme_use_image_pinlock)) {
            z = true;
        } else {
            z = false;
        }
        this.mIsImagePinLock = z;
        if (z) {
            i = R.layout.keyguard_image_pad_key;
        } else if (DeviceType.isTablet()) {
            i = R.layout.keyguard_sec_num_pad_key_tablet;
        } else {
            i = R.layout.keyguard_sec_num_pad_key;
        }
        removeAllViews();
        LayoutInflater layoutInflater = (LayoutInflater) getContext().getSystemService("layout_inflater");
        Objects.requireNonNull(layoutInflater);
        layoutInflater.inflate(i, (ViewGroup) this, true);
        boolean z4 = this.mIsImagePinLock;
        int i13 = R.drawable.keyguard_pin_background_whitebg;
        if (z4) {
            this.mDigitImage = (ImageView) findViewById(R.id.digit_image);
            boolean isWhiteKeyguardWallpaper = WallpaperUtils.isWhiteKeyguardWallpaper("background");
            int i14 = R.drawable.pin_number_image_1_black;
            if (isWhiteKeyguardWallpaper) {
                if (BitmapFactory.decodeResource(getResources(), R.drawable.pin_number_image_1_black) == null) {
                    Log.d("SecNumPadKey", "return null - bitmap is null");
                    z2 = false;
                } else {
                    z2 = true;
                }
                if (z2) {
                    z3 = true;
                }
            }
            switch (this.mDigit) {
                case 0:
                    ImageView imageView = this.mDigitImage;
                    if (z3) {
                        i4 = R.drawable.pin_number_image_0_black;
                    } else {
                        i4 = R.drawable.pin_number_image_0;
                    }
                    imageView.setImageResource(i4);
                    break;
                case 1:
                    ImageView imageView2 = this.mDigitImage;
                    if (!z3) {
                        i14 = R.drawable.pin_number_image_1;
                    }
                    imageView2.setImageResource(i14);
                    break;
                case 2:
                    ImageView imageView3 = this.mDigitImage;
                    if (z3) {
                        i5 = R.drawable.pin_number_image_2_black;
                    } else {
                        i5 = R.drawable.pin_number_image_2;
                    }
                    imageView3.setImageResource(i5);
                    break;
                case 3:
                    ImageView imageView4 = this.mDigitImage;
                    if (z3) {
                        i6 = R.drawable.pin_number_image_3_black;
                    } else {
                        i6 = R.drawable.pin_number_image_3;
                    }
                    imageView4.setImageResource(i6);
                    break;
                case 4:
                    ImageView imageView5 = this.mDigitImage;
                    if (z3) {
                        i7 = R.drawable.pin_number_image_4_black;
                    } else {
                        i7 = R.drawable.pin_number_image_4;
                    }
                    imageView5.setImageResource(i7);
                    break;
                case 5:
                    ImageView imageView6 = this.mDigitImage;
                    if (z3) {
                        i8 = R.drawable.pin_number_image_5_black;
                    } else {
                        i8 = R.drawable.pin_number_image_5;
                    }
                    imageView6.setImageResource(i8);
                    break;
                case 6:
                    ImageView imageView7 = this.mDigitImage;
                    if (z3) {
                        i9 = R.drawable.pin_number_image_6_black;
                    } else {
                        i9 = R.drawable.pin_number_image_6;
                    }
                    imageView7.setImageResource(i9);
                    break;
                case 7:
                    ImageView imageView8 = this.mDigitImage;
                    if (z3) {
                        i10 = R.drawable.pin_number_image_7_black;
                    } else {
                        i10 = R.drawable.pin_number_image_7;
                    }
                    imageView8.setImageResource(i10);
                    break;
                case 8:
                    ImageView imageView9 = this.mDigitImage;
                    if (z3) {
                        i11 = R.drawable.pin_number_image_8_black;
                    } else {
                        i11 = R.drawable.pin_number_image_8;
                    }
                    imageView9.setImageResource(i11);
                    break;
                case 9:
                    ImageView imageView10 = this.mDigitImage;
                    if (z3) {
                        i12 = R.drawable.pin_number_image_9_black;
                    } else {
                        i12 = R.drawable.pin_number_image_9;
                    }
                    imageView10.setImageResource(i12);
                    break;
            }
            setContentDescription(Integer.toString(this.mDigit));
            try {
                Context context = getContext();
                if (isWhiteKeyguardWallpaper) {
                    i3 = R.drawable.pin_number_bg_image_black;
                } else {
                    i3 = R.drawable.pin_number_bg_image;
                }
                setBackground(context.getDrawable(i3));
                return;
            } catch (Exception unused) {
                Context context2 = getContext();
                if (!isWhiteKeyguardWallpaper) {
                    i13 = R.drawable.keyguard_pin_background;
                }
                setBackground(context2.getDrawable(i13));
                return;
            }
        }
        TextView textView = (TextView) findViewById(R.id.digit_text);
        this.mDigitText = textView;
        textView.setText(Integer.toString(this.mDigit));
        TextView textView2 = (TextView) findViewById(R.id.klondike_text);
        this.mKlondikeText = textView2;
        int i15 = this.mDigit;
        if (i15 > 0) {
            if (NumPadKey.sKlondike == null) {
                NumPadKey.sKlondike = getResources().getStringArray(R.array.lockscreen_num_pad_klondike);
            }
            String[] strArr = NumPadKey.sKlondike;
            int length = strArr.length;
            int i16 = this.mDigit;
            if (length > i16) {
                String str2 = strArr[i16];
                if (str2.length() > 0) {
                    this.mKlondikeText.setText(str2);
                } else {
                    this.mKlondikeText.setVisibility(4);
                }
            }
        } else if (i15 == 0) {
            textView2.setVisibility(8);
        }
        setContentDescription(this.mDigitText.getText().toString());
        TextView textView3 = this.mDigitText;
        if (textView3 instanceof SystemUITextView) {
            SystemUITextView systemUITextView = (SystemUITextView) textView3;
            if (this.mSettingsHelper.isOpenThemeLook()) {
                str = this.mSettingsHelper.mItemLists.get("theme_font_numeric").getStringValue();
            } else {
                str = null;
            }
            if (!TextUtils.isEmpty(str) && new File(str).exists()) {
                create = Typeface.createFromFile(str);
            } else {
                create = Typeface.create(Typeface.create(getContext().getString(R.string.pinlock_numeric_font_family), 0), 400, false);
                if (!TextUtils.isEmpty(str)) {
                    Log.e("NumPadKey", str + " does not exist. Use default font.");
                }
            }
            if (create != null) {
                systemUITextView.setTypeface(create);
            }
        }
        boolean needsBlackComponent = SystemUIWidgetUtil.needsBlackComponent(getContext(), SystemUIWidgetUtil.convertFlag("background"), true);
        if (this.mSettingsHelper.isReduceTransparencyEnabled()) {
            Context context3 = getContext();
            if (needsBlackComponent) {
                i2 = R.drawable.keyguard_pin_background_whitebg_reduce_transparency;
            } else {
                i2 = R.drawable.keyguard_pin_background_reduce_transparency;
            }
            this.mRipple = (RippleDrawable) context3.getDrawable(i2);
        } else {
            Context context4 = getContext();
            if (!needsBlackComponent) {
                i13 = R.drawable.keyguard_pin_background;
            }
            this.mRipple = (RippleDrawable) context4.getDrawable(i13);
        }
        RippleDrawable rippleDrawable = this.mRipple;
        if (rippleDrawable != null) {
            setBackground(rippleDrawable);
        }
    }

    public SecNumPadKey(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SecNumPadKey(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, R.layout.keyguard_sec_num_pad_key);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.keyguard.SecNumPadKey$1] */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.android.keyguard.SecNumPadKey$$ExternalSyntheticLambda0] */
    private SecNumPadKey(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.mAccessibilityDelegate = new View.AccessibilityDelegate(this) { // from class: com.android.keyguard.SecNumPadKey.1
            @Override // android.view.View.AccessibilityDelegate
            public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                accessibilityNodeInfo.setTextEntryKey(true);
            }
        };
        this.mOnSettingsChangedCallback = new SettingsHelper.OnChangedCallback() { // from class: com.android.keyguard.SecNumPadKey$$ExternalSyntheticLambda0
            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                int i3 = SecNumPadKey.$r8$clinit;
                final SecNumPadKey secNumPadKey = SecNumPadKey.this;
                secNumPadKey.getClass();
                Log.d("SecNumPadKey", "onChanged " + uri);
                ((Executor) Dependency.get(Dependency.MAIN_EXECUTOR)).execute(new Runnable() { // from class: com.android.keyguard.SecNumPadKey$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SecNumPadKey.this.updateViewStyle();
                    }
                });
            }
        };
        setOnHoverListener(null);
        if (this.mDigit == 0) {
            this.mKlondikeText.setVisibility(8);
        }
        if (LsRune.SECURITY_SPR_USIM_TEXT) {
            setContentDescription(context.getString(R.string.keyguard_accessibility_dot));
        }
        RippleDrawable rippleDrawable = (RippleDrawable) context.getDrawable(R.drawable.keyguard_pin_background);
        this.mRipple = rippleDrawable;
        setBackground(rippleDrawable);
        setClipChildren(false);
        setClipToPadding(false);
        this.mSettingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);
    }
}
