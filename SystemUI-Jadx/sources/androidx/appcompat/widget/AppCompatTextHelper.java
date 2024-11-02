package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.LocaleList;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AppCompatTextHelper {
    public boolean mAsyncFontPending;
    public final AppCompatTextViewAutoSizeHelper mAutoSizeTextHelper;
    public TintInfo mDrawableBottomTint;
    public TintInfo mDrawableEndTint;
    public TintInfo mDrawableLeftTint;
    public TintInfo mDrawableRightTint;
    public TintInfo mDrawableStartTint;
    public TintInfo mDrawableTopTint;
    public Typeface mFontTypeface;
    public final TextView mView;
    public int mStyle = 0;
    public int mFontWeight = -1;

    public AppCompatTextHelper(TextView textView) {
        this.mView = textView;
        this.mAutoSizeTextHelper = new AppCompatTextViewAutoSizeHelper(textView);
    }

    public static TintInfo createTintInfo(Context context, AppCompatDrawableManager appCompatDrawableManager, int i) {
        synchronized (appCompatDrawableManager) {
            appCompatDrawableManager.mResourceManager.getTintList(i, context);
        }
        return null;
    }

    public final void applyCompoundDrawableTint(Drawable drawable, TintInfo tintInfo) {
        if (drawable != null && tintInfo != null) {
            AppCompatDrawableManager.tintDrawable(drawable, tintInfo, this.mView.getDrawableState());
        }
    }

    public final void applyCompoundDrawablesTints() {
        TintInfo tintInfo = this.mDrawableLeftTint;
        TextView textView = this.mView;
        if (tintInfo != null || this.mDrawableTopTint != null || this.mDrawableRightTint != null || this.mDrawableBottomTint != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            applyCompoundDrawableTint(compoundDrawables[0], this.mDrawableLeftTint);
            applyCompoundDrawableTint(compoundDrawables[1], this.mDrawableTopTint);
            applyCompoundDrawableTint(compoundDrawables[2], this.mDrawableRightTint);
            applyCompoundDrawableTint(compoundDrawables[3], this.mDrawableBottomTint);
        }
        if (this.mDrawableStartTint != null || this.mDrawableEndTint != null) {
            Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
            applyCompoundDrawableTint(compoundDrawablesRelative[0], this.mDrawableStartTint);
            applyCompoundDrawableTint(compoundDrawablesRelative[2], this.mDrawableEndTint);
        }
    }

    public final void loadFromAttributes(AttributeSet attributeSet, int i) {
        boolean z;
        boolean z2;
        String str;
        String str2;
        float f;
        float f2;
        float f3;
        int i2;
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        Drawable drawable4;
        Drawable drawable5;
        Drawable drawable6;
        int i3;
        int i4;
        int i5;
        int i6;
        int resourceId;
        TextView textView = this.mView;
        Context context = textView.getContext();
        AppCompatDrawableManager appCompatDrawableManager = AppCompatDrawableManager.get();
        int[] iArr = R$styleable.AppCompatTextHelper;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i, 0);
        Context context2 = textView.getContext();
        TypedArray typedArray = obtainStyledAttributes.mWrapped;
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api29Impl.saveAttributeDataForStyleable(textView, context2, iArr, attributeSet, typedArray, i, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(0, -1);
        if (obtainStyledAttributes.hasValue(3)) {
            createTintInfo(context, appCompatDrawableManager, obtainStyledAttributes.getResourceId(3, 0));
            this.mDrawableLeftTint = null;
        }
        if (obtainStyledAttributes.hasValue(1)) {
            createTintInfo(context, appCompatDrawableManager, obtainStyledAttributes.getResourceId(1, 0));
            this.mDrawableTopTint = null;
        }
        if (obtainStyledAttributes.hasValue(4)) {
            createTintInfo(context, appCompatDrawableManager, obtainStyledAttributes.getResourceId(4, 0));
            this.mDrawableRightTint = null;
        }
        if (obtainStyledAttributes.hasValue(2)) {
            createTintInfo(context, appCompatDrawableManager, obtainStyledAttributes.getResourceId(2, 0));
            this.mDrawableBottomTint = null;
        }
        if (obtainStyledAttributes.hasValue(5)) {
            createTintInfo(context, appCompatDrawableManager, obtainStyledAttributes.getResourceId(5, 0));
            this.mDrawableStartTint = null;
        }
        if (obtainStyledAttributes.hasValue(6)) {
            createTintInfo(context, appCompatDrawableManager, obtainStyledAttributes.getResourceId(6, 0));
            this.mDrawableEndTint = null;
        }
        obtainStyledAttributes.recycle();
        boolean z3 = textView.getTransformationMethod() instanceof PasswordTransformationMethod;
        int[] iArr2 = R$styleable.TextAppearance;
        if (resourceId2 != -1) {
            TintTypedArray obtainStyledAttributes2 = TintTypedArray.obtainStyledAttributes(context, resourceId2, iArr2);
            if (!z3 && obtainStyledAttributes2.hasValue(14)) {
                z = obtainStyledAttributes2.getBoolean(14, false);
                z2 = true;
            } else {
                z = false;
                z2 = false;
            }
            updateTypefaceAndStyle(context, obtainStyledAttributes2);
            if (obtainStyledAttributes2.hasValue(15)) {
                str = obtainStyledAttributes2.getString(15);
            } else {
                str = null;
            }
            if (obtainStyledAttributes2.hasValue(13)) {
                str2 = obtainStyledAttributes2.getString(13);
            } else {
                str2 = null;
            }
            obtainStyledAttributes2.recycle();
        } else {
            z = false;
            z2 = false;
            str = null;
            str2 = null;
        }
        TintTypedArray obtainStyledAttributes3 = TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr2, i, 0);
        if (!z3 && obtainStyledAttributes3.hasValue(14)) {
            z = obtainStyledAttributes3.getBoolean(14, false);
            z2 = true;
        }
        boolean z4 = z;
        if (obtainStyledAttributes3.hasValue(15)) {
            str = obtainStyledAttributes3.getString(15);
        }
        if (obtainStyledAttributes3.hasValue(13)) {
            str2 = obtainStyledAttributes3.getString(13);
        }
        String str3 = str2;
        if (obtainStyledAttributes3.hasValue(0) && obtainStyledAttributes3.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        updateTypefaceAndStyle(context, obtainStyledAttributes3);
        obtainStyledAttributes3.recycle();
        if (!z3 && z2) {
            textView.setAllCaps(z4);
        }
        Typeface typeface = this.mFontTypeface;
        if (typeface != null) {
            if (this.mFontWeight == -1) {
                textView.setTypeface(typeface, this.mStyle);
            } else {
                textView.setTypeface(typeface);
            }
        }
        if (str3 != null) {
            textView.setFontVariationSettings(str3);
        }
        if (str != null) {
            textView.setTextLocales(LocaleList.forLanguageTags(str));
        }
        int[] iArr3 = R$styleable.AppCompatTextView;
        AppCompatTextViewAutoSizeHelper appCompatTextViewAutoSizeHelper = this.mAutoSizeTextHelper;
        Context context3 = appCompatTextViewAutoSizeHelper.mContext;
        TypedArray obtainStyledAttributes4 = context3.obtainStyledAttributes(attributeSet, iArr3, i, 0);
        TextView textView2 = appCompatTextViewAutoSizeHelper.mTextView;
        ViewCompat.Api29Impl.saveAttributeDataForStyleable(textView2, textView2.getContext(), iArr3, attributeSet, obtainStyledAttributes4, i, 0);
        if (obtainStyledAttributes4.hasValue(5)) {
            appCompatTextViewAutoSizeHelper.mAutoSizeTextType = obtainStyledAttributes4.getInt(5, 0);
        }
        if (obtainStyledAttributes4.hasValue(4)) {
            f = obtainStyledAttributes4.getDimension(4, -1.0f);
        } else {
            f = -1.0f;
        }
        if (obtainStyledAttributes4.hasValue(2)) {
            f2 = obtainStyledAttributes4.getDimension(2, -1.0f);
        } else {
            f2 = -1.0f;
        }
        if (obtainStyledAttributes4.hasValue(1)) {
            f3 = obtainStyledAttributes4.getDimension(1, -1.0f);
        } else {
            f3 = -1.0f;
        }
        if (obtainStyledAttributes4.hasValue(3) && (resourceId = obtainStyledAttributes4.getResourceId(3, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes4.getResources().obtainTypedArray(resourceId);
            int length = obtainTypedArray.length();
            int[] iArr4 = new int[length];
            if (length > 0) {
                for (int i7 = 0; i7 < length; i7++) {
                    iArr4[i7] = obtainTypedArray.getDimensionPixelSize(i7, -1);
                }
                appCompatTextViewAutoSizeHelper.mAutoSizeTextSizesInPx = AppCompatTextViewAutoSizeHelper.cleanupAutoSizePresetSizes(iArr4);
                appCompatTextViewAutoSizeHelper.setupAutoSizeUniformPresetSizesConfiguration();
            }
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes4.recycle();
        if (appCompatTextViewAutoSizeHelper.supportsAutoSizeText()) {
            if (appCompatTextViewAutoSizeHelper.mAutoSizeTextType == 1) {
                if (!appCompatTextViewAutoSizeHelper.mHasPresetAutoSizeValues) {
                    DisplayMetrics displayMetrics = context3.getResources().getDisplayMetrics();
                    if (f2 == -1.0f) {
                        i6 = 2;
                        f2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                    } else {
                        i6 = 2;
                    }
                    if (f3 == -1.0f) {
                        f3 = TypedValue.applyDimension(i6, 112.0f, displayMetrics);
                    }
                    if (f == -1.0f) {
                        f = 1.0f;
                    }
                    appCompatTextViewAutoSizeHelper.validateAndSetAutoSizeTextTypeUniformConfiguration(f2, f3, f);
                }
                appCompatTextViewAutoSizeHelper.setupAutoSizeText();
            }
        } else {
            appCompatTextViewAutoSizeHelper.mAutoSizeTextType = 0;
        }
        Method method = ViewUtils.sComputeFitSystemWindowsMethod;
        if (appCompatTextViewAutoSizeHelper.mAutoSizeTextType != 0) {
            int[] iArr5 = appCompatTextViewAutoSizeHelper.mAutoSizeTextSizesInPx;
            if (iArr5.length > 0) {
                if (textView.getAutoSizeStepGranularity() != -1.0f) {
                    textView.setAutoSizeTextTypeUniformWithConfiguration(Math.round(appCompatTextViewAutoSizeHelper.mAutoSizeMinTextSizeInPx), Math.round(appCompatTextViewAutoSizeHelper.mAutoSizeMaxTextSizeInPx), Math.round(appCompatTextViewAutoSizeHelper.mAutoSizeStepGranularityInPx), 0);
                } else {
                    textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr5, 0);
                }
            }
        }
        TintTypedArray obtainStyledAttributes5 = TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr3);
        int resourceId3 = obtainStyledAttributes5.getResourceId(8, -1);
        if (resourceId3 != -1) {
            drawable = appCompatDrawableManager.getDrawable(resourceId3, context);
            i2 = 13;
        } else {
            i2 = 13;
            drawable = null;
        }
        int resourceId4 = obtainStyledAttributes5.getResourceId(i2, -1);
        if (resourceId4 != -1) {
            drawable2 = appCompatDrawableManager.getDrawable(resourceId4, context);
        } else {
            drawable2 = null;
        }
        int resourceId5 = obtainStyledAttributes5.getResourceId(9, -1);
        if (resourceId5 != -1) {
            drawable3 = appCompatDrawableManager.getDrawable(resourceId5, context);
        } else {
            drawable3 = null;
        }
        int resourceId6 = obtainStyledAttributes5.getResourceId(6, -1);
        if (resourceId6 != -1) {
            drawable4 = appCompatDrawableManager.getDrawable(resourceId6, context);
        } else {
            drawable4 = null;
        }
        int resourceId7 = obtainStyledAttributes5.getResourceId(10, -1);
        if (resourceId7 != -1) {
            drawable5 = appCompatDrawableManager.getDrawable(resourceId7, context);
        } else {
            drawable5 = null;
        }
        int resourceId8 = obtainStyledAttributes5.getResourceId(7, -1);
        if (resourceId8 != -1) {
            drawable6 = appCompatDrawableManager.getDrawable(resourceId8, context);
        } else {
            drawable6 = null;
        }
        if (drawable5 == null && drawable6 == null) {
            if (drawable != null || drawable2 != null || drawable3 != null || drawable4 != null) {
                Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
                Drawable drawable7 = compoundDrawablesRelative[0];
                if (drawable7 == null && compoundDrawablesRelative[2] == null) {
                    Drawable[] compoundDrawables = textView.getCompoundDrawables();
                    if (drawable == null) {
                        drawable = compoundDrawables[0];
                    }
                    if (drawable2 == null) {
                        drawable2 = compoundDrawables[1];
                    }
                    if (drawable3 == null) {
                        drawable3 = compoundDrawables[2];
                    }
                    if (drawable4 == null) {
                        drawable4 = compoundDrawables[3];
                    }
                    textView.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
                } else {
                    if (drawable2 == null) {
                        drawable2 = compoundDrawablesRelative[1];
                    }
                    Drawable drawable8 = compoundDrawablesRelative[2];
                    if (drawable4 == null) {
                        drawable4 = compoundDrawablesRelative[3];
                    }
                    textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, drawable8, drawable4);
                }
            }
        } else {
            Drawable[] compoundDrawablesRelative2 = textView.getCompoundDrawablesRelative();
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative2[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative2[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative2[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative2[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
        }
        if (obtainStyledAttributes5.hasValue(11)) {
            textView.setCompoundDrawableTintList(obtainStyledAttributes5.getColorStateList(11));
        }
        if (obtainStyledAttributes5.hasValue(12)) {
            i3 = -1;
            textView.setCompoundDrawableTintMode(DrawableUtils.parseTintMode(obtainStyledAttributes5.getInt(12, -1), null));
        } else {
            i3 = -1;
        }
        int dimensionPixelSize = obtainStyledAttributes5.getDimensionPixelSize(15, i3);
        int dimensionPixelSize2 = obtainStyledAttributes5.getDimensionPixelSize(18, i3);
        int dimensionPixelSize3 = obtainStyledAttributes5.getDimensionPixelSize(19, i3);
        obtainStyledAttributes5.recycle();
        if (dimensionPixelSize != i3) {
            Preconditions.checkArgumentNonnegative(dimensionPixelSize);
            textView.setFirstBaselineToTopHeight(dimensionPixelSize);
        }
        if (dimensionPixelSize2 != i3) {
            Preconditions.checkArgumentNonnegative(dimensionPixelSize2);
            Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
            if (textView.getIncludeFontPadding()) {
                i5 = fontMetricsInt.bottom;
            } else {
                i5 = fontMetricsInt.descent;
            }
            if (dimensionPixelSize2 > Math.abs(i5)) {
                textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), dimensionPixelSize2 - i5);
            }
            i4 = -1;
        } else {
            i4 = i3;
        }
        if (dimensionPixelSize3 != i4) {
            Preconditions.checkArgumentNonnegative(dimensionPixelSize3);
            if (dimensionPixelSize3 != textView.getPaint().getFontMetricsInt(null)) {
                textView.setLineSpacing(dimensionPixelSize3 - r0, 1.0f);
            }
        }
    }

    public final void onSetTextAppearance(int i, Context context) {
        String string;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, i, R$styleable.TextAppearance);
        boolean hasValue = obtainStyledAttributes.hasValue(14);
        TextView textView = this.mView;
        if (hasValue) {
            textView.setAllCaps(obtainStyledAttributes.getBoolean(14, false));
        }
        if (obtainStyledAttributes.hasValue(0) && obtainStyledAttributes.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        updateTypefaceAndStyle(context, obtainStyledAttributes);
        if (obtainStyledAttributes.hasValue(13) && (string = obtainStyledAttributes.getString(13)) != null) {
            textView.setFontVariationSettings(string);
        }
        obtainStyledAttributes.recycle();
        Typeface typeface = this.mFontTypeface;
        if (typeface != null) {
            textView.setTypeface(typeface, this.mStyle);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1, types: [androidx.appcompat.widget.AppCompatTextHelper$1] */
    public final void updateTypefaceAndStyle(Context context, TintTypedArray tintTypedArray) {
        String string;
        boolean z;
        boolean z2;
        this.mStyle = tintTypedArray.getInt(2, this.mStyle);
        int i = tintTypedArray.getInt(11, -1);
        this.mFontWeight = i;
        boolean z3 = false;
        if (i != -1) {
            this.mStyle = (this.mStyle & 2) | 0;
        }
        int i2 = 10;
        if (!tintTypedArray.hasValue(10) && !tintTypedArray.hasValue(12)) {
            if (tintTypedArray.hasValue(1)) {
                this.mAsyncFontPending = false;
                int i3 = tintTypedArray.getInt(1, 1);
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 == 3) {
                            this.mFontTypeface = Typeface.MONOSPACE;
                            return;
                        }
                        return;
                    }
                    this.mFontTypeface = Typeface.SERIF;
                    return;
                }
                this.mFontTypeface = Typeface.SANS_SERIF;
                return;
            }
            return;
        }
        this.mFontTypeface = null;
        if (tintTypedArray.hasValue(12)) {
            i2 = 12;
        }
        final int i4 = this.mFontWeight;
        final int i5 = this.mStyle;
        if (!context.isRestricted()) {
            final WeakReference weakReference = new WeakReference(this.mView);
            try {
                Typeface font = tintTypedArray.getFont(i2, this.mStyle, new ResourcesCompat.FontCallback() { // from class: androidx.appcompat.widget.AppCompatTextHelper.1
                    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                    public final void onFontRetrieved(Typeface typeface) {
                        boolean z4;
                        int i6 = i4;
                        if (i6 != -1) {
                            if ((i5 & 2) != 0) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            typeface = Typeface.create(typeface, i6, z4);
                        }
                        AppCompatTextHelper appCompatTextHelper = AppCompatTextHelper.this;
                        if (appCompatTextHelper.mAsyncFontPending) {
                            appCompatTextHelper.mFontTypeface = typeface;
                            TextView textView = (TextView) weakReference.get();
                            if (textView != null) {
                                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                                if (ViewCompat.Api19Impl.isAttachedToWindow(textView)) {
                                    textView.post(new Runnable(appCompatTextHelper, textView, typeface, appCompatTextHelper.mStyle) { // from class: androidx.appcompat.widget.AppCompatTextHelper.2
                                        public final /* synthetic */ int val$style;
                                        public final /* synthetic */ TextView val$textView;
                                        public final /* synthetic */ Typeface val$typeface;

                                        {
                                            this.val$textView = textView;
                                            this.val$typeface = typeface;
                                            this.val$style = r4;
                                        }

                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            this.val$textView.setTypeface(this.val$typeface, this.val$style);
                                        }
                                    });
                                } else {
                                    textView.setTypeface(typeface, appCompatTextHelper.mStyle);
                                }
                            }
                        }
                    }

                    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                    public final void onFontRetrievalFailed(int i6) {
                    }
                });
                if (font != null) {
                    if (this.mFontWeight != -1) {
                        Typeface create = Typeface.create(font, 0);
                        int i6 = this.mFontWeight;
                        if ((this.mStyle & 2) != 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        this.mFontTypeface = Typeface.create(create, i6, z2);
                    } else {
                        this.mFontTypeface = font;
                    }
                }
                if (this.mFontTypeface == null) {
                    z = true;
                } else {
                    z = false;
                }
                this.mAsyncFontPending = z;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.mFontTypeface == null && (string = tintTypedArray.getString(i2)) != null) {
            if (this.mFontWeight != -1) {
                Typeface create2 = Typeface.create(string, 0);
                int i7 = this.mFontWeight;
                if ((this.mStyle & 2) != 0) {
                    z3 = true;
                }
                this.mFontTypeface = Typeface.create(create2, i7, z3);
                return;
            }
            this.mFontTypeface = Typeface.create(string, this.mStyle);
        }
    }
}
