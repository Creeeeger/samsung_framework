package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.provider.Settings;
import android.text.InputFilter;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ActionMode;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Animation;
import android.view.animation.PathInterpolator;
import android.view.animation.Transformation;
import android.widget.CompoundButton;
import androidx.appcompat.R$styleable;
import androidx.appcompat.text.AllCapsTransformationMethod;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.emoji2.text.EmojiCompat;
import androidx.reflect.view.SeslHapticFeedbackConstantsReflector;
import androidx.reflect.view.SeslViewReflector;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class SwitchCompat extends CompoundButton {
    public static final int[] CHECKED_STATE_SET;
    public CharSequence mAccessibilityTextOff;
    public CharSequence mAccessibilityTextOn;
    public AppCompatEmojiTextHelper mAppCompatEmojiTextHelper;
    public EmojiCompatInitCallback mEmojiCompatInitCallback;
    public boolean mHasThumbTint;
    public final boolean mHasThumbTintMode;
    public boolean mHasTrackTint;
    public final boolean mHasTrackTintMode;
    public final PathInterpolator mInterpolator;
    public Layout mOffLayout;
    public Layout mOnLayout;
    public ThumbAnimation mPositionAnimator;
    public final boolean mShowText;
    public final boolean mSplitTrack;
    public int mSwitchBottom;
    public int mSwitchHeight;
    public int mSwitchLeft;
    public final int mSwitchPadding;
    public int mSwitchRight;
    public int mSwitchTop;
    public AllCapsTransformationMethod mSwitchTransformationMethod;
    public int mSwitchWidth;
    public final Rect mTempRect;
    public ColorStateList mTextColors;
    public CharSequence mTextOff;
    public CharSequence mTextOffTransformed;
    public CharSequence mTextOn;
    public CharSequence mTextOnTransformed;
    public final TextPaint mTextPaint;
    public Drawable mThumbDrawable;
    public float mThumbPosition;
    public final int mThumbTextPadding;
    public ColorStateList mThumbTintList;
    public final PorterDuff.Mode mThumbTintMode;
    public int mThumbWidth;
    public int mTouchMode;
    public final int mTouchSlop;
    public float mTouchX;
    public float mTouchY;
    public Drawable mTrackDrawable;
    public int mTrackMargin;
    public Drawable mTrackOffDrawable;
    public Drawable mTrackOnDrawable;
    public ColorStateList mTrackTintList;
    public final PorterDuff.Mode mTrackTintMode;
    public final VelocityTracker mVelocityTracker;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class EmojiCompatInitCallback extends EmojiCompat.InitCallback {
        public final Reference mOuterWeakRef;

        public EmojiCompatInitCallback(SwitchCompat switchCompat) {
            this.mOuterWeakRef = new WeakReference(switchCompat);
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public final void onFailed() {
            SwitchCompat switchCompat = (SwitchCompat) this.mOuterWeakRef.get();
            if (switchCompat != null) {
                switchCompat.setTextOnInternal(switchCompat.mTextOn);
                switchCompat.setTextOffInternal(switchCompat.mTextOff);
                switchCompat.requestLayout();
            }
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public final void onInitialized() {
            SwitchCompat switchCompat = (SwitchCompat) this.mOuterWeakRef.get();
            if (switchCompat != null) {
                switchCompat.setTextOnInternal(switchCompat.mTextOn);
                switchCompat.setTextOffInternal(switchCompat.mTextOff);
                switchCompat.requestLayout();
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ThumbAnimation extends Animation {
        public final float mDiff;
        public final float mStartPosition;

        public ThumbAnimation(float f, float f2) {
            this.mStartPosition = f;
            this.mDiff = f2 - f;
        }

        @Override // android.view.animation.Animation
        public final void applyTransformation(float f, Transformation transformation) {
            SwitchCompat.this.setThumbPosition((this.mDiff * f) + this.mStartPosition);
        }
    }

    static {
        new Property(Float.class, "thumbPos") { // from class: androidx.appcompat.widget.SwitchCompat.1
            @Override // android.util.Property
            public final Object get(Object obj) {
                return Float.valueOf(((SwitchCompat) obj).mThumbPosition);
            }

            @Override // android.util.Property
            public final void set(Object obj, Object obj2) {
                ((SwitchCompat) obj).setThumbPosition(((Float) obj2).floatValue());
            }
        };
        CHECKED_STATE_SET = new int[]{R.attr.state_checked};
    }

    public SwitchCompat(Context context) {
        this(context, null);
    }

    public final void applyThumbTint() {
        Drawable drawable = this.mThumbDrawable;
        if (drawable != null) {
            if (this.mHasThumbTint || this.mHasThumbTintMode) {
                Drawable mutate = drawable.mutate();
                this.mThumbDrawable = mutate;
                if (this.mHasThumbTint) {
                    mutate.setTintList(this.mThumbTintList);
                }
                if (this.mHasThumbTintMode) {
                    this.mThumbDrawable.setTintMode(this.mThumbTintMode);
                }
                if (this.mThumbDrawable.isStateful()) {
                    this.mThumbDrawable.setState(getDrawableState());
                }
            }
        }
    }

    public final void applyTrackTint() {
        Drawable drawable = this.mTrackDrawable;
        if (drawable != null) {
            if (this.mHasTrackTint || this.mHasTrackTintMode) {
                Drawable mutate = drawable.mutate();
                this.mTrackDrawable = mutate;
                if (this.mHasTrackTint) {
                    mutate.setTintList(this.mTrackTintList);
                }
                if (this.mHasTrackTintMode) {
                    this.mTrackDrawable.setTintMode(this.mTrackTintMode);
                }
                if (this.mTrackDrawable.isStateful()) {
                    this.mTrackDrawable.setState(getDrawableState());
                }
            }
        }
    }

    public final boolean canHapticFeedback(boolean z) {
        if (z != isChecked() && hasWindowFocus() && SeslViewReflector.isVisibleToUser(this) && !isTemporarilyDetached()) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        float f;
        Rect rect;
        int i;
        int i2;
        Rect rect2 = this.mTempRect;
        int i3 = this.mSwitchLeft;
        int i4 = this.mSwitchTop;
        int i5 = this.mSwitchRight;
        int i6 = this.mSwitchBottom;
        if (ViewUtils.isLayoutRtl(this)) {
            f = 1.0f - this.mThumbPosition;
        } else {
            f = this.mThumbPosition;
        }
        int thumbScrollRange = ((int) ((f * getThumbScrollRange()) + 0.5f)) + i3;
        Drawable drawable = this.mThumbDrawable;
        if (drawable != null) {
            rect = DrawableUtils.getOpticalBounds(drawable);
        } else {
            rect = DrawableUtils.INSETS_NONE;
        }
        Drawable drawable2 = this.mTrackDrawable;
        if (drawable2 != null) {
            drawable2.getPadding(rect2);
            int i7 = rect2.left;
            thumbScrollRange += i7;
            int i8 = this.mTrackMargin / 2;
            int i9 = i3 + i8;
            int i10 = i5 - i8;
            if (rect != null) {
                int i11 = rect.left;
                if (i11 > i7) {
                    i9 += i11 - i7;
                }
                int i12 = rect.top;
                int i13 = rect2.top;
                if (i12 > i13) {
                    i = (i12 - i13) + i4;
                } else {
                    i = i4;
                }
                int i14 = rect.right;
                int i15 = rect2.right;
                if (i14 > i15) {
                    i10 -= i14 - i15;
                }
                int i16 = rect.bottom;
                int i17 = rect2.bottom;
                if (i16 > i17) {
                    i2 = i6 - (i16 - i17);
                    this.mTrackDrawable.setBounds(i9, i, i10, i2);
                }
            } else {
                i = i4;
            }
            i2 = i6;
            this.mTrackDrawable.setBounds(i9, i, i10, i2);
        }
        Drawable drawable3 = this.mThumbDrawable;
        if (drawable3 != null) {
            drawable3.getPadding(rect2);
            int i18 = thumbScrollRange - rect2.left;
            int i19 = thumbScrollRange + this.mThumbWidth + rect2.right;
            this.mThumbDrawable.setBounds(i18, i4, i19, i6);
            Drawable background = getBackground();
            if (background != null) {
                background.setHotspotBounds(i18, i4, i19, i6);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.mThumbDrawable;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
        Drawable drawable2 = this.mTrackDrawable;
        if (drawable2 != null) {
            drawable2.setHotspot(f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.mThumbDrawable;
        boolean z = false;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.mTrackDrawable;
        if (drawable2 != null && drawable2.isStateful()) {
            z |= drawable2.setState(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public final int getCompoundPaddingLeft() {
        if (!ViewUtils.isLayoutRtl(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.mSwitchWidth + this.mTrackMargin;
        if (!TextUtils.isEmpty(getText())) {
            return compoundPaddingLeft + this.mSwitchPadding;
        }
        return compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public final int getCompoundPaddingRight() {
        if (ViewUtils.isLayoutRtl(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.mSwitchWidth + this.mTrackMargin;
        if (!TextUtils.isEmpty(getText())) {
            return compoundPaddingRight + this.mSwitchPadding;
        }
        return compoundPaddingRight;
    }

    @Override // android.widget.TextView
    public final ActionMode.Callback getCustomSelectionActionModeCallback() {
        return TextViewCompat.unwrapCustomSelectionActionModeCallback(super.getCustomSelectionActionModeCallback());
    }

    public final AppCompatEmojiTextHelper getEmojiTextViewHelper() {
        if (this.mAppCompatEmojiTextHelper == null) {
            this.mAppCompatEmojiTextHelper = new AppCompatEmojiTextHelper(this);
        }
        return this.mAppCompatEmojiTextHelper;
    }

    public final int getThumbScrollRange() {
        Rect rect;
        Drawable drawable = this.mTrackDrawable;
        if (drawable != null) {
            Rect rect2 = this.mTempRect;
            drawable.getPadding(rect2);
            Drawable drawable2 = this.mThumbDrawable;
            if (drawable2 != null) {
                rect = DrawableUtils.getOpticalBounds(drawable2);
            } else {
                rect = DrawableUtils.INSETS_NONE;
            }
            return (((((this.mSwitchWidth + this.mTrackMargin) - this.mThumbWidth) - rect2.left) - rect2.right) - rect.left) - rect.right;
        }
        return 0;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void jumpDrawablesToCurrentState() {
        float f;
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.mThumbDrawable;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.mTrackDrawable;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        if (this.mPositionAnimator != null) {
            clearAnimation();
            this.mPositionAnimator = null;
        }
        if (isChecked()) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        setThumbPosition(f);
    }

    public final Layout makeLayout(CharSequence charSequence) {
        int i;
        TextPaint textPaint = this.mTextPaint;
        if (charSequence != null) {
            i = (int) Math.ceil(Layout.getDesiredWidth(charSequence, textPaint));
        } else {
            i = 0;
        }
        return new StaticLayout(charSequence, textPaint, i, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mSwitchWidth = getResources().getDimensionPixelSize(com.android.systemui.R.dimen.sesl_switch_width);
        this.mAccessibilityTextOn = getResources().getString(com.android.systemui.R.string.sesl_switch_on);
        this.mAccessibilityTextOff = getResources().getString(com.android.systemui.R.string.sesl_switch_off);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            CompoundButton.mergeDrawableStates(onCreateDrawableState, CHECKED_STATE_SET);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        boolean z;
        Layout layout;
        int width;
        Drawable drawable;
        super.onDraw(canvas);
        Rect rect = this.mTempRect;
        Drawable drawable2 = this.mTrackDrawable;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i = this.mSwitchTop;
        int i2 = this.mSwitchBottom;
        int i3 = i + rect.top;
        int i4 = i2 - rect.bottom;
        Drawable drawable3 = this.mThumbDrawable;
        if (drawable2 != null) {
            if (this.mSplitTrack && drawable3 != null) {
                Rect opticalBounds = DrawableUtils.getOpticalBounds(drawable3);
                drawable3.copyBounds(rect);
                rect.left += opticalBounds.left;
                rect.right -= opticalBounds.right;
                int save = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable2.draw(canvas);
                canvas.restoreToCount(save);
            } else {
                if (isChecked()) {
                    drawable = this.mTrackOffDrawable;
                } else {
                    drawable = this.mTrackOnDrawable;
                }
                drawable.setBounds(drawable2.getBounds());
                int i5 = (int) (this.mThumbPosition * 255.0f);
                if (i5 > 255) {
                    i5 = 255;
                } else if (i5 < 0) {
                    i5 = 0;
                }
                int i6 = 255 - i5;
                if (isChecked()) {
                    drawable2.setAlpha(i5);
                    drawable.setAlpha(i6);
                } else {
                    drawable2.setAlpha(i6);
                    drawable.setAlpha(i5);
                }
                drawable2.draw(canvas);
                drawable.draw(canvas);
            }
        }
        int save2 = canvas.save();
        if (drawable3 != null) {
            drawable3.draw(canvas);
        }
        if (this.mThumbPosition > 0.5f) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            layout = this.mOnLayout;
        } else {
            layout = this.mOffLayout;
        }
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.mTextColors;
            if (colorStateList != null) {
                this.mTextPaint.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.mTextPaint.drawableState = drawableState;
            if (drawable3 != null) {
                Rect bounds = drawable3.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (layout.getWidth() / 2), ((i3 + i4) / 2) - (layout.getHeight() / 2));
            layout.draw(canvas);
        }
        canvas.restoreToCount(save2);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int width;
        int i6;
        int i7;
        int i8;
        super.onLayout(z, i, i2, i3, i4);
        int i9 = 0;
        if (this.mThumbDrawable != null) {
            Rect rect = this.mTempRect;
            Drawable drawable = this.mTrackDrawable;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect opticalBounds = DrawableUtils.getOpticalBounds(this.mThumbDrawable);
            i5 = Math.max(0, opticalBounds.left - rect.left);
            i9 = Math.max(0, opticalBounds.right - rect.right);
        } else {
            i5 = 0;
        }
        if (ViewUtils.isLayoutRtl(this)) {
            i6 = getPaddingLeft() + i5;
            width = (((this.mSwitchWidth + i6) + this.mTrackMargin) - i5) - i9;
        } else {
            width = (getWidth() - getPaddingRight()) - i9;
            i6 = ((width - this.mSwitchWidth) - this.mTrackMargin) + i5 + i9;
        }
        int gravity = getGravity() & 112;
        if (gravity != 16) {
            if (gravity != 80) {
                i8 = getPaddingTop();
                i7 = this.mSwitchHeight + i8;
            } else {
                i7 = getHeight() - getPaddingBottom();
                i8 = i7 - this.mSwitchHeight;
            }
        } else {
            int height = ((getHeight() + getPaddingTop()) - getPaddingBottom()) / 2;
            int i10 = this.mSwitchHeight;
            int i11 = height - (i10 / 2);
            i7 = i10 + i11;
            i8 = i11;
        }
        this.mSwitchLeft = i6;
        this.mSwitchTop = i8;
        this.mSwitchBottom = i7;
        this.mSwitchRight = width;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        if (this.mShowText) {
            if (this.mOnLayout == null) {
                this.mOnLayout = makeLayout(this.mTextOnTransformed);
            }
            if (this.mOffLayout == null) {
                this.mOffLayout = makeLayout(this.mTextOffTransformed);
            }
        }
        Rect rect = this.mTempRect;
        Drawable drawable = this.mThumbDrawable;
        int i7 = 0;
        if (drawable != null) {
            drawable.getPadding(rect);
            i3 = (this.mThumbDrawable.getIntrinsicWidth() - rect.left) - rect.right;
            i4 = this.mThumbDrawable.getIntrinsicHeight();
        } else {
            i3 = 0;
            i4 = 0;
        }
        if (this.mShowText) {
            i5 = (this.mThumbTextPadding * 2) + Math.max(this.mOnLayout.getWidth(), this.mOffLayout.getWidth());
        } else {
            i5 = 0;
        }
        this.mThumbWidth = Math.max(i5, i3);
        Drawable drawable2 = this.mTrackDrawable;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i6 = this.mTrackDrawable.getIntrinsicHeight();
        } else {
            rect.setEmpty();
            i6 = 0;
        }
        int i8 = rect.left;
        int i9 = rect.right;
        Drawable drawable3 = this.mThumbDrawable;
        if (drawable3 != null) {
            Rect opticalBounds = DrawableUtils.getOpticalBounds(drawable3);
            Math.max(i8, opticalBounds.left);
            Math.max(i9, opticalBounds.right);
        }
        int max = Math.max(i6, i4);
        this.mSwitchHeight = max;
        if (this.mThumbWidth / this.mSwitchWidth > 0.5714286f) {
            i7 = (int) Math.ceil(r1 - (r4 * 0.5714286f));
        }
        this.mTrackMargin = i7;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < max) {
            setMeasuredDimension(getMeasuredWidthAndState(), max);
        }
    }

    @Override // android.view.View
    public final void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        CharSequence charSequence;
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        if (isChecked()) {
            charSequence = this.mAccessibilityTextOn;
        } else {
            charSequence = this.mAccessibilityTextOff;
        }
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x00da, code lost:
    
        if (r8 > 0.5f) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00ec, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0018, code lost:
    
        if (r0 != 3) goto L97;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r11) {
        /*
            Method dump skipped, instructions count: 378
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.TextView
    public final void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().setAllCaps(z);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        if (canHapticFeedback(z)) {
            performHapticFeedback(SeslHapticFeedbackConstantsReflector.semGetVibrationIndex(27));
        }
        super.setChecked(z);
        final boolean isChecked = isChecked();
        if (isChecked) {
            setOnStateDescriptionOnRAndAbove();
        } else {
            setOffStateDescriptionOnRAndAbove();
        }
        float f = 1.0f;
        if (getWindowToken() != null) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            if (ViewCompat.Api19Impl.isLaidOut(this)) {
                ThumbAnimation thumbAnimation = this.mPositionAnimator;
                if (thumbAnimation != null && thumbAnimation != null) {
                    clearAnimation();
                    this.mPositionAnimator = null;
                }
                float f2 = this.mThumbPosition;
                if (!isChecked) {
                    f = 0.0f;
                }
                ThumbAnimation thumbAnimation2 = new ThumbAnimation(f2, f);
                this.mPositionAnimator = thumbAnimation2;
                thumbAnimation2.setDuration(150L);
                this.mPositionAnimator.setDuration(300L);
                this.mPositionAnimator.setInterpolator(this.mInterpolator);
                this.mPositionAnimator.setAnimationListener(new Animation.AnimationListener() { // from class: androidx.appcompat.widget.SwitchCompat.2
                    @Override // android.view.animation.Animation.AnimationListener
                    public final void onAnimationEnd(Animation animation) {
                        float f3;
                        SwitchCompat switchCompat = SwitchCompat.this;
                        if (switchCompat.mPositionAnimator == animation) {
                            if (isChecked) {
                                f3 = 1.0f;
                            } else {
                                f3 = 0.0f;
                            }
                            switchCompat.setThumbPosition(f3);
                            SwitchCompat.this.mPositionAnimator = null;
                        }
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public final void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public final void onAnimationStart(Animation animation) {
                    }
                });
                startAnimation(this.mPositionAnimator);
                return;
            }
        }
        if (this.mPositionAnimator != null) {
            clearAnimation();
            this.mPositionAnimator = null;
        }
        if (!isChecked) {
            f = 0.0f;
        }
        setThumbPosition(f);
    }

    public final void setCheckedWithoutAnimation(boolean z) {
        float f;
        super.setChecked(z);
        boolean isChecked = isChecked();
        if (isChecked) {
            setOnStateDescriptionOnRAndAbove();
        } else {
            setOffStateDescriptionOnRAndAbove();
        }
        if (this.mPositionAnimator != null) {
            clearAnimation();
            this.mPositionAnimator = null;
        }
        if (isChecked) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        setThumbPosition(f);
    }

    @Override // android.widget.TextView
    public final void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(callback);
    }

    @Override // android.widget.TextView
    public final void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().getFilters(inputFilterArr));
    }

    public final void setOffStateDescriptionOnRAndAbove() {
        Object obj = this.mAccessibilityTextOff;
        if (obj == null) {
            obj = getResources().getString(com.android.systemui.R.string.abc_capital_off);
        }
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        new ViewCompat.AnonymousClass3(com.android.systemui.R.id.tag_state_description, CharSequence.class, 64, 30).set(this, obj);
    }

    public final void setOnStateDescriptionOnRAndAbove() {
        Object obj = this.mAccessibilityTextOn;
        if (obj == null) {
            obj = getResources().getString(com.android.systemui.R.string.abc_capital_on);
        }
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        new ViewCompat.AnonymousClass3(com.android.systemui.R.id.tag_state_description, CharSequence.class, 64, 30).set(this, obj);
    }

    public final void setSwitchTypeface(Typeface typeface) {
        if ((this.mTextPaint.getTypeface() != null && !this.mTextPaint.getTypeface().equals(typeface)) || (this.mTextPaint.getTypeface() == null && typeface != null)) {
            this.mTextPaint.setTypeface(typeface);
            requestLayout();
            invalidate();
        }
    }

    public final void setTextOffInternal(CharSequence charSequence) {
        this.mTextOff = charSequence;
        AppCompatEmojiTextHelper emojiTextViewHelper = getEmojiTextViewHelper();
        TransformationMethod wrapTransformationMethod = emojiTextViewHelper.mEmojiTextViewHelper.mHelper.wrapTransformationMethod(this.mSwitchTransformationMethod);
        if (wrapTransformationMethod != null) {
            charSequence = wrapTransformationMethod.getTransformation(charSequence, this);
        }
        this.mTextOffTransformed = charSequence;
        this.mOffLayout = null;
        if (this.mShowText) {
            setupEmojiCompatLoadCallback();
        }
    }

    public final void setTextOnInternal(CharSequence charSequence) {
        this.mTextOn = charSequence;
        AppCompatEmojiTextHelper emojiTextViewHelper = getEmojiTextViewHelper();
        TransformationMethod wrapTransformationMethod = emojiTextViewHelper.mEmojiTextViewHelper.mHelper.wrapTransformationMethod(this.mSwitchTransformationMethod);
        if (wrapTransformationMethod != null) {
            charSequence = wrapTransformationMethod.getTransformation(charSequence, this);
        }
        this.mTextOnTransformed = charSequence;
        this.mOnLayout = null;
        if (this.mShowText) {
            setupEmojiCompatLoadCallback();
        }
    }

    public final void setThumbPosition(float f) {
        this.mThumbPosition = f;
        invalidate();
    }

    public final void setupEmojiCompatLoadCallback() {
        boolean z;
        if (this.mEmojiCompatInitCallback == null && this.mAppCompatEmojiTextHelper.mEmojiTextViewHelper.mHelper.isEnabled()) {
            if (EmojiCompat.sInstance != null) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                EmojiCompat emojiCompat = EmojiCompat.get();
                int loadState = emojiCompat.getLoadState();
                if (loadState == 3 || loadState == 0) {
                    EmojiCompatInitCallback emojiCompatInitCallback = new EmojiCompatInitCallback(this);
                    this.mEmojiCompatInitCallback = emojiCompatInitCallback;
                    emojiCompat.registerInitCallback(emojiCompatInitCallback);
                }
            }
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        if (!super.verifyDrawable(drawable) && drawable != this.mThumbDrawable && drawable != this.mTrackDrawable) {
            return false;
        }
        return true;
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.android.systemui.R.attr.switchStyle);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Typeface typeface;
        Typeface create;
        this.mThumbTintList = null;
        this.mThumbTintMode = null;
        this.mHasThumbTint = false;
        this.mHasThumbTintMode = false;
        this.mTrackTintList = null;
        this.mTrackTintMode = null;
        this.mHasTrackTint = false;
        this.mHasTrackTintMode = false;
        this.mVelocityTracker = VelocityTracker.obtain();
        this.mTempRect = new Rect();
        this.mTrackMargin = 0;
        ThemeUtils.checkAppCompatTheme(getContext(), this);
        TextPaint textPaint = new TextPaint(1);
        this.mTextPaint = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        int i2 = Settings.System.getString(context.getContentResolver(), "current_sec_active_themepackage") != null ? com.android.systemui.R.attr.themeSwitchStyle : i;
        int[] iArr = R$styleable.SwitchCompat;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i2, 0);
        TypedArray typedArray = obtainStyledAttributes.mWrapped;
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api29Impl.saveAttributeDataForStyleable(this, context, iArr, attributeSet, typedArray, i2, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(2);
        this.mThumbDrawable = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        Drawable drawable2 = obtainStyledAttributes.getDrawable(12);
        this.mTrackDrawable = drawable2;
        if (drawable2 != null) {
            drawable2.setCallback(this);
            Drawable.ConstantState constantState = this.mTrackDrawable.getConstantState();
            if (constantState != null) {
                this.mTrackOnDrawable = constantState.newDrawable();
                this.mTrackOffDrawable = constantState.newDrawable();
            } else {
                Drawable drawable3 = this.mTrackDrawable;
                this.mTrackOnDrawable = drawable3;
                this.mTrackOffDrawable = drawable3;
            }
            this.mTrackOnDrawable.setState(new int[]{R.attr.state_enabled, R.attr.state_checked});
            this.mTrackOffDrawable.setState(new int[]{R.attr.state_enabled, -16842912});
        }
        setTextOnInternal(obtainStyledAttributes.getText(0));
        setTextOffInternal(obtainStyledAttributes.getText(1));
        this.mShowText = obtainStyledAttributes.getBoolean(3, true);
        this.mThumbTextPadding = obtainStyledAttributes.getDimensionPixelSize(9, 0);
        obtainStyledAttributes.getDimensionPixelSize(5, 0);
        this.mSwitchPadding = obtainStyledAttributes.getDimensionPixelSize(7, 0);
        this.mSplitTrack = obtainStyledAttributes.getBoolean(4, false);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(10);
        if (colorStateList != null) {
            this.mThumbTintList = colorStateList;
            this.mHasThumbTint = true;
        }
        PorterDuff.Mode parseTintMode = DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(11, -1), null);
        if (parseTintMode != null) {
            this.mThumbTintMode = parseTintMode;
            this.mHasThumbTintMode = true;
        }
        if (this.mHasThumbTint || this.mHasThumbTintMode) {
            applyThumbTint();
        }
        ColorStateList colorStateList2 = obtainStyledAttributes.getColorStateList(13);
        if (colorStateList2 != null) {
            this.mTrackTintList = colorStateList2;
            this.mHasTrackTint = true;
        }
        PorterDuff.Mode parseTintMode2 = DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(14, -1), null);
        if (parseTintMode2 != null) {
            this.mTrackTintMode = parseTintMode2;
            this.mHasTrackTintMode = true;
        }
        if (this.mHasTrackTint || this.mHasTrackTintMode) {
            applyTrackTint();
        }
        int resourceId = obtainStyledAttributes.getResourceId(8, 0);
        if (resourceId != 0) {
            TintTypedArray obtainStyledAttributes2 = TintTypedArray.obtainStyledAttributes(context, resourceId, R$styleable.TextAppearance);
            ColorStateList colorStateList3 = obtainStyledAttributes2.getColorStateList(3);
            if (colorStateList3 != null) {
                this.mTextColors = colorStateList3;
            } else {
                this.mTextColors = getTextColors();
            }
            int dimensionPixelSize = obtainStyledAttributes2.getDimensionPixelSize(0, 0);
            if (dimensionPixelSize != 0) {
                float f = dimensionPixelSize;
                if (f != textPaint.getTextSize()) {
                    textPaint.setTextSize(f);
                    requestLayout();
                }
            }
            int i3 = obtainStyledAttributes2.getInt(1, -1);
            int i4 = obtainStyledAttributes2.getInt(2, -1);
            if (i3 == 1) {
                typeface = Typeface.SANS_SERIF;
            } else if (i3 != 2) {
                typeface = i3 != 3 ? null : Typeface.MONOSPACE;
            } else {
                typeface = Typeface.SERIF;
            }
            if (i4 > 0) {
                if (typeface == null) {
                    create = Typeface.defaultFromStyle(i4);
                } else {
                    create = Typeface.create(typeface, i4);
                }
                setSwitchTypeface(create);
                int i5 = (~(create != null ? create.getStyle() : 0)) & i4;
                textPaint.setFakeBoldText((i5 & 1) != 0);
                textPaint.setTextSkewX((2 & i5) != 0 ? -0.25f : 0.0f);
            } else {
                textPaint.setFakeBoldText(false);
                textPaint.setTextSkewX(0.0f);
                setSwitchTypeface(typeface);
            }
            if (obtainStyledAttributes2.getBoolean(14, false)) {
                this.mSwitchTransformationMethod = new AllCapsTransformationMethod(getContext());
            } else {
                this.mSwitchTransformationMethod = null;
            }
            setTextOnInternal(this.mTextOn);
            setTextOffInternal(this.mTextOff);
            obtainStyledAttributes2.recycle();
        }
        new AppCompatTextHelper(this).loadFromAttributes(attributeSet, i);
        obtainStyledAttributes.recycle();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        viewConfiguration.getScaledMinimumFlingVelocity();
        getEmojiTextViewHelper().loadFromAttributes(attributeSet, i);
        this.mSwitchWidth = getResources().getDimensionPixelSize(com.android.systemui.R.dimen.sesl_switch_width);
        this.mAccessibilityTextOn = getResources().getString(com.android.systemui.R.string.sesl_switch_on);
        this.mAccessibilityTextOff = getResources().getString(com.android.systemui.R.string.sesl_switch_off);
        this.mInterpolator = new PathInterpolator(0.22f, 0.25f, 0.0f, 1.0f);
        refreshDrawableState();
        setChecked(isChecked());
    }
}
