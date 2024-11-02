package com.google.android.material.textfield;

import android.R;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.appcompat.widget.TintTypedArray;
import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import androidx.core.content.ContextCompat;
import androidx.core.text.BidiFormatter;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewCompat$$ExternalSyntheticLambda0;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import androidx.transition.Fade;
import androidx.transition.TransitionManager;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.CollapsingTextHelper;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.RelativeCornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.textfield.EndCompoundLayout;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class TextInputLayout extends LinearLayout {
    public static final int[][] EDIT_TEXT_BACKGROUND_RIPPLE_STATE = {new int[]{R.attr.state_pressed}, new int[0]};
    public ValueAnimator animator;
    public boolean areCornerRadiiRtl;
    public MaterialShapeDrawable boxBackground;
    public boolean boxBackgroundApplied;
    public int boxBackgroundColor;
    public int boxBackgroundMode;
    public int boxCollapsedPaddingTopPx;
    public final int boxLabelCutoutPaddingPx;
    public int boxStrokeColor;
    public final int boxStrokeWidthDefaultPx;
    public final int boxStrokeWidthFocusedPx;
    public int boxStrokeWidthPx;
    public MaterialShapeDrawable boxUnderlineDefault;
    public MaterialShapeDrawable boxUnderlineFocused;
    public final CollapsingTextHelper collapsingTextHelper;
    public boolean counterEnabled;
    public int counterMaxLength;
    public int counterOverflowTextAppearance;
    public ColorStateList counterOverflowTextColor;
    public boolean counterOverflowed;
    public int counterTextAppearance;
    public ColorStateList counterTextColor;
    public AppCompatTextView counterView;
    public final int defaultFilledBackgroundColor;
    public ColorStateList defaultHintTextColor;
    public int defaultStrokeColor;
    public int disabledColor;
    public final int disabledFilledBackgroundColor;
    public EditText editText;
    public final LinkedHashSet editTextAttachedListeners;
    public Drawable endDummyDrawable;
    public int endDummyDrawableWidth;
    public final EndCompoundLayout endLayout;
    public final boolean expandedHintEnabled;
    public StateListDrawable filledDropDownMenuBackground;
    public final int focusedFilledBackgroundColor;
    public int focusedStrokeColor;
    public ColorStateList focusedTextColor;
    public CharSequence hint;
    public final boolean hintAnimationEnabled;
    public final boolean hintEnabled;
    public boolean hintExpanded;
    public final int hoveredFilledBackgroundColor;
    public int hoveredStrokeColor;
    public boolean inDrawableStateChanged;
    public final IndicatorViewController indicatorViewController;
    public final FrameLayout inputFrame;
    public boolean isProvidingHint;
    public final ViewCompat$$ExternalSyntheticLambda0 lengthCounter;
    public int maxEms;
    public int maxWidth;
    public int minEms;
    public int minWidth;
    public Drawable originalEditTextEndDrawable;
    public CharSequence originalHint;
    public MaterialShapeDrawable outlinedDropDownMenuBackground;
    public boolean placeholderEnabled;
    public Fade placeholderFadeIn;
    public Fade placeholderFadeOut;
    public CharSequence placeholderText;
    public int placeholderTextAppearance;
    public ColorStateList placeholderTextColor;
    public AppCompatTextView placeholderTextView;
    public boolean restoringSavedState;
    public ShapeAppearanceModel shapeAppearanceModel;
    public Drawable startDummyDrawable;
    public int startDummyDrawableWidth;
    public final StartCompoundLayout startLayout;
    public ColorStateList strokeErrorColor;
    public final Rect tmpBoundsRect;
    public final Rect tmpRect;
    public final RectF tmpRectF;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class AccessibilityDelegate extends AccessibilityDelegateCompat {
        public final TextInputLayout layout;

        public AccessibilityDelegate(TextInputLayout textInputLayout) {
            this.layout = textInputLayout;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            CharSequence charSequence;
            CharSequence charSequence2;
            CharSequence charSequence3;
            CharSequence charSequence4;
            boolean z;
            String str;
            AppCompatTextView appCompatTextView;
            View.AccessibilityDelegate accessibilityDelegate = this.mOriginalDelegate;
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.mInfo;
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            TextInputLayout textInputLayout = this.layout;
            EditText editText = textInputLayout.editText;
            CharSequence charSequence5 = null;
            if (editText != null) {
                charSequence = editText.getText();
            } else {
                charSequence = null;
            }
            if (textInputLayout.hintEnabled) {
                charSequence2 = textInputLayout.hint;
            } else {
                charSequence2 = null;
            }
            IndicatorViewController indicatorViewController = textInputLayout.indicatorViewController;
            if (indicatorViewController.errorEnabled) {
                charSequence3 = indicatorViewController.errorText;
            } else {
                charSequence3 = null;
            }
            if (textInputLayout.placeholderEnabled) {
                charSequence4 = textInputLayout.placeholderText;
            } else {
                charSequence4 = null;
            }
            int i = textInputLayout.counterMaxLength;
            if (textInputLayout.counterEnabled && textInputLayout.counterOverflowed && (appCompatTextView = textInputLayout.counterView) != null) {
                charSequence5 = appCompatTextView.getContentDescription();
            }
            boolean z2 = !TextUtils.isEmpty(charSequence);
            boolean z3 = !TextUtils.isEmpty(charSequence2);
            boolean z4 = !textInputLayout.hintExpanded;
            boolean z5 = !TextUtils.isEmpty(charSequence3);
            if (!z5 && TextUtils.isEmpty(charSequence5)) {
                z = false;
            } else {
                z = true;
            }
            if (z3) {
                str = charSequence2.toString();
            } else {
                str = "";
            }
            StartCompoundLayout startCompoundLayout = textInputLayout.startLayout;
            if (startCompoundLayout.prefixTextView.getVisibility() == 0) {
                accessibilityNodeInfo.setLabelFor(startCompoundLayout.prefixTextView);
                accessibilityNodeInfo.setTraversalAfter(startCompoundLayout.prefixTextView);
            } else {
                accessibilityNodeInfo.setTraversalAfter(startCompoundLayout.startIconView);
            }
            if (z2) {
                accessibilityNodeInfoCompat.setText(charSequence);
            } else if (!TextUtils.isEmpty(str)) {
                accessibilityNodeInfoCompat.setText(str);
                if (z4 && charSequence4 != null) {
                    accessibilityNodeInfoCompat.setText(str + ", " + ((Object) charSequence4));
                }
            } else if (charSequence4 != null) {
                accessibilityNodeInfoCompat.setText(charSequence4);
            }
            if (!TextUtils.isEmpty(str)) {
                accessibilityNodeInfo.setHintText(str);
                accessibilityNodeInfo.setShowingHintText(!z2);
            }
            if (charSequence == null || charSequence.length() != i) {
                i = -1;
            }
            accessibilityNodeInfo.setMaxTextLength(i);
            if (z) {
                if (!z5) {
                    charSequence3 = charSequence5;
                }
                accessibilityNodeInfo.setError(charSequence3);
            }
            AppCompatTextView appCompatTextView2 = textInputLayout.indicatorViewController.helperTextView;
            if (appCompatTextView2 != null) {
                accessibilityNodeInfo.setLabelFor(appCompatTextView2);
            }
            textInputLayout.endLayout.getEndIconDelegate().onInitializeAccessibilityNodeInfo(accessibilityNodeInfoCompat);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            this.layout.endLayout.getEndIconDelegate().onPopulateAccessibilityEvent(accessibilityEvent);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator() { // from class: com.google.android.material.textfield.TextInputLayout.SavedState.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        };
        public CharSequence error;
        public boolean isEndIconChecked;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public final String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.error) + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.mSuperState, i);
            TextUtils.writeToParcel(this.error, parcel, i);
            parcel.writeInt(this.isEndIconChecked ? 1 : 0);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.error = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.isEndIconChecked = parcel.readInt() == 1;
        }
    }

    public TextInputLayout(Context context) {
        this(context, null);
    }

    public static void recursiveSetEnabled(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                recursiveSetEnabled((ViewGroup) childAt, z);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof EditText) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
            layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
            this.inputFrame.addView(view, layoutParams2);
            this.inputFrame.setLayoutParams(layoutParams);
            updateInputLayoutMargins();
            EditText editText = (EditText) view;
            if (this.editText == null) {
                if (this.endLayout.endIconMode != 3 && !(editText instanceof TextInputEditText)) {
                    Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
                }
                this.editText = editText;
                int i2 = this.minEms;
                if (i2 != -1) {
                    this.minEms = i2;
                    if (editText != null && i2 != -1) {
                        editText.setMinEms(i2);
                    }
                } else {
                    int i3 = this.minWidth;
                    this.minWidth = i3;
                    if (editText != null && i3 != -1) {
                        editText.setMinWidth(i3);
                    }
                }
                int i4 = this.maxEms;
                if (i4 != -1) {
                    this.maxEms = i4;
                    EditText editText2 = this.editText;
                    if (editText2 != null && i4 != -1) {
                        editText2.setMaxEms(i4);
                    }
                } else {
                    int i5 = this.maxWidth;
                    this.maxWidth = i5;
                    EditText editText3 = this.editText;
                    if (editText3 != null && i5 != -1) {
                        editText3.setMaxWidth(i5);
                    }
                }
                this.boxBackgroundApplied = false;
                onApplyBoxBackgroundMode();
                AccessibilityDelegate accessibilityDelegate = new AccessibilityDelegate(this);
                EditText editText4 = this.editText;
                if (editText4 != null) {
                    ViewCompat.setAccessibilityDelegate(editText4, accessibilityDelegate);
                }
                CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
                Typeface typeface = this.editText.getTypeface();
                boolean collapsedTypefaceInternal = collapsingTextHelper.setCollapsedTypefaceInternal(typeface);
                boolean expandedTypefaceInternal = collapsingTextHelper.setExpandedTypefaceInternal(typeface);
                if (collapsedTypefaceInternal || expandedTypefaceInternal) {
                    collapsingTextHelper.recalculate(false);
                }
                CollapsingTextHelper collapsingTextHelper2 = this.collapsingTextHelper;
                float textSize = this.editText.getTextSize();
                if (collapsingTextHelper2.expandedTextSize != textSize) {
                    collapsingTextHelper2.expandedTextSize = textSize;
                    collapsingTextHelper2.recalculate(false);
                }
                CollapsingTextHelper collapsingTextHelper3 = this.collapsingTextHelper;
                float letterSpacing = this.editText.getLetterSpacing();
                if (collapsingTextHelper3.expandedLetterSpacing != letterSpacing) {
                    collapsingTextHelper3.expandedLetterSpacing = letterSpacing;
                    collapsingTextHelper3.recalculate(false);
                }
                int gravity = this.editText.getGravity();
                CollapsingTextHelper collapsingTextHelper4 = this.collapsingTextHelper;
                int i6 = (gravity & (-113)) | 48;
                if (collapsingTextHelper4.collapsedTextGravity != i6) {
                    collapsingTextHelper4.collapsedTextGravity = i6;
                    collapsingTextHelper4.recalculate(false);
                }
                CollapsingTextHelper collapsingTextHelper5 = this.collapsingTextHelper;
                if (collapsingTextHelper5.expandedTextGravity != gravity) {
                    collapsingTextHelper5.expandedTextGravity = gravity;
                    collapsingTextHelper5.recalculate(false);
                }
                this.editText.addTextChangedListener(new TextWatcher() { // from class: com.google.android.material.textfield.TextInputLayout.1
                    @Override // android.text.TextWatcher
                    public final void afterTextChanged(Editable editable) {
                        TextInputLayout.this.updateLabelState(!r0.restoringSavedState, false);
                        TextInputLayout textInputLayout = TextInputLayout.this;
                        if (textInputLayout.counterEnabled) {
                            textInputLayout.updateCounter(editable);
                        }
                        TextInputLayout textInputLayout2 = TextInputLayout.this;
                        if (textInputLayout2.placeholderEnabled) {
                            textInputLayout2.updatePlaceholderText(editable);
                        }
                    }

                    @Override // android.text.TextWatcher
                    public final void beforeTextChanged(CharSequence charSequence, int i7, int i8, int i9) {
                    }

                    @Override // android.text.TextWatcher
                    public final void onTextChanged(CharSequence charSequence, int i7, int i8, int i9) {
                    }
                });
                if (this.defaultHintTextColor == null) {
                    this.defaultHintTextColor = this.editText.getHintTextColors();
                }
                if (this.hintEnabled) {
                    if (TextUtils.isEmpty(this.hint)) {
                        CharSequence hint = this.editText.getHint();
                        this.originalHint = hint;
                        setHint(hint);
                        this.editText.setHint((CharSequence) null);
                    }
                    this.isProvidingHint = true;
                }
                if (this.counterView != null) {
                    updateCounter(this.editText.getText());
                }
                updateEditTextBackground();
                this.indicatorViewController.adjustIndicatorPadding();
                this.startLayout.bringToFront();
                this.endLayout.bringToFront();
                Iterator it = this.editTextAttachedListeners.iterator();
                while (it.hasNext()) {
                    ((EndCompoundLayout.AnonymousClass2) it.next()).onEditTextAttached(this);
                }
                this.endLayout.updateSuffixTextViewPadding();
                if (!isEnabled()) {
                    editText.setEnabled(false);
                }
                updateLabelState(false, true);
                return;
            }
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        super.addView(view, i, layoutParams);
    }

    public void animateToExpansionFraction(float f) {
        if (this.collapsingTextHelper.expandedFraction == f) {
            return;
        }
        if (this.animator == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.animator = valueAnimator;
            valueAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
            this.animator.setDuration(167L);
            this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.TextInputLayout.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    TextInputLayout.this.collapsingTextHelper.setExpansionFraction(((Float) valueAnimator2.getAnimatedValue()).floatValue());
                }
            });
        }
        this.animator.setFloatValues(this.collapsingTextHelper.expandedFraction, f);
        this.animator.start();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void applyBoxAttributes() {
        /*
            r7 = this;
            com.google.android.material.shape.MaterialShapeDrawable r0 = r7.boxBackground
            if (r0 != 0) goto L5
            return
        L5:
            com.google.android.material.shape.MaterialShapeDrawable$MaterialShapeDrawableState r1 = r0.drawableState
            com.google.android.material.shape.ShapeAppearanceModel r1 = r1.shapeAppearanceModel
            com.google.android.material.shape.ShapeAppearanceModel r2 = r7.shapeAppearanceModel
            if (r1 == r2) goto L10
            r0.setShapeAppearanceModel(r2)
        L10:
            int r0 = r7.boxBackgroundMode
            r1 = 2
            r2 = -1
            r3 = 0
            r4 = 1
            if (r0 != r1) goto L27
            int r0 = r7.boxStrokeWidthPx
            if (r0 <= r2) goto L22
            int r0 = r7.boxStrokeColor
            if (r0 == 0) goto L22
            r0 = r4
            goto L23
        L22:
            r0 = r3
        L23:
            if (r0 == 0) goto L27
            r0 = r4
            goto L28
        L27:
            r0 = r3
        L28:
            if (r0 == 0) goto L3f
            com.google.android.material.shape.MaterialShapeDrawable r0 = r7.boxBackground
            int r1 = r7.boxStrokeWidthPx
            float r1 = (float) r1
            int r5 = r7.boxStrokeColor
            com.google.android.material.shape.MaterialShapeDrawable$MaterialShapeDrawableState r6 = r0.drawableState
            r6.strokeWidth = r1
            r0.invalidateSelf()
            android.content.res.ColorStateList r1 = android.content.res.ColorStateList.valueOf(r5)
            r0.setStrokeColor(r1)
        L3f:
            int r0 = r7.boxBackgroundColor
            int r1 = r7.boxBackgroundMode
            if (r1 != r4) goto L56
            android.content.Context r0 = r7.getContext()
            r1 = 2130968890(0x7f04013a, float:1.7546446E38)
            int r0 = com.google.android.material.color.MaterialColors.getColor(r1, r0, r3)
            int r1 = r7.boxBackgroundColor
            int r0 = androidx.core.graphics.ColorUtils.compositeColors(r1, r0)
        L56:
            r7.boxBackgroundColor = r0
            com.google.android.material.shape.MaterialShapeDrawable r1 = r7.boxBackground
            android.content.res.ColorStateList r0 = android.content.res.ColorStateList.valueOf(r0)
            r1.setFillColor(r0)
            com.google.android.material.shape.MaterialShapeDrawable r0 = r7.boxUnderlineDefault
            if (r0 == 0) goto L9b
            com.google.android.material.shape.MaterialShapeDrawable r1 = r7.boxUnderlineFocused
            if (r1 != 0) goto L6a
            goto L9b
        L6a:
            int r1 = r7.boxStrokeWidthPx
            if (r1 <= r2) goto L73
            int r1 = r7.boxStrokeColor
            if (r1 == 0) goto L73
            r3 = r4
        L73:
            if (r3 == 0) goto L98
            android.widget.EditText r1 = r7.editText
            boolean r1 = r1.isFocused()
            if (r1 == 0) goto L84
            int r1 = r7.defaultStrokeColor
            android.content.res.ColorStateList r1 = android.content.res.ColorStateList.valueOf(r1)
            goto L8a
        L84:
            int r1 = r7.boxStrokeColor
            android.content.res.ColorStateList r1 = android.content.res.ColorStateList.valueOf(r1)
        L8a:
            r0.setFillColor(r1)
            com.google.android.material.shape.MaterialShapeDrawable r0 = r7.boxUnderlineFocused
            int r1 = r7.boxStrokeColor
            android.content.res.ColorStateList r1 = android.content.res.ColorStateList.valueOf(r1)
            r0.setFillColor(r1)
        L98:
            r7.invalidate()
        L9b:
            r7.updateEditTextBoxBackgroundIfNeeded()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.applyBoxAttributes():void");
    }

    public final int calculateLabelMarginTop() {
        float collapsedTextHeight;
        if (!this.hintEnabled) {
            return 0;
        }
        int i = this.boxBackgroundMode;
        if (i != 0) {
            if (i != 2) {
                return 0;
            }
            collapsedTextHeight = this.collapsingTextHelper.getCollapsedTextHeight() / 2.0f;
        } else {
            collapsedTextHeight = this.collapsingTextHelper.getCollapsedTextHeight();
        }
        return (int) collapsedTextHeight;
    }

    public final boolean cutoutEnabled() {
        if (this.hintEnabled && !TextUtils.isEmpty(this.hint) && (this.boxBackground instanceof CutoutDrawable)) {
            return true;
        }
        return false;
    }

    public boolean cutoutIsOpen() {
        if (cutoutEnabled() && (!((CutoutDrawable) this.boxBackground).cutoutBounds.isEmpty())) {
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        CharSequence charSequence;
        EditText editText = this.editText;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        if (this.originalHint != null) {
            boolean z = this.isProvidingHint;
            this.isProvidingHint = false;
            CharSequence hint = editText.getHint();
            this.editText.setHint(this.originalHint);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i);
                return;
            } finally {
                this.editText.setHint(hint);
                this.isProvidingHint = z;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i);
        onProvideAutofillVirtualStructure(viewStructure, i);
        viewStructure.setChildCount(this.inputFrame.getChildCount());
        for (int i2 = 0; i2 < this.inputFrame.getChildCount(); i2++) {
            View childAt = this.inputFrame.getChildAt(i2);
            ViewStructure newChild = viewStructure.newChild(i2);
            childAt.dispatchProvideAutofillStructure(newChild, i);
            if (childAt == this.editText) {
                if (this.hintEnabled) {
                    charSequence = this.hint;
                } else {
                    charSequence = null;
                }
                newChild.setHint(charSequence);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.restoringSavedState = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.restoringSavedState = false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        MaterialShapeDrawable materialShapeDrawable;
        super.draw(canvas);
        if (this.hintEnabled) {
            this.collapsingTextHelper.draw(canvas);
        }
        if (this.boxUnderlineFocused != null && (materialShapeDrawable = this.boxUnderlineDefault) != null) {
            materialShapeDrawable.draw(canvas);
            if (this.editText.isFocused()) {
                Rect bounds = this.boxUnderlineFocused.getBounds();
                Rect bounds2 = this.boxUnderlineDefault.getBounds();
                float f = this.collapsingTextHelper.expandedFraction;
                int centerX = bounds2.centerX();
                bounds.left = AnimationUtils.lerp(f, centerX, bounds2.left);
                bounds.right = AnimationUtils.lerp(f, centerX, bounds2.right);
                this.boxUnderlineFocused.draw(canvas);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        boolean z;
        if (this.inDrawableStateChanged) {
            return;
        }
        boolean z2 = true;
        this.inDrawableStateChanged = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        if (collapsingTextHelper != null) {
            z = collapsingTextHelper.setState(drawableState) | false;
        } else {
            z = false;
        }
        if (this.editText != null) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            if (!ViewCompat.Api19Impl.isLaidOut(this) || !isEnabled()) {
                z2 = false;
            }
            updateLabelState(z2, false);
        }
        updateEditTextBackground();
        updateTextInputBoxState();
        if (z) {
            invalidate();
        }
        this.inDrawableStateChanged = false;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final int getBaseline() {
        EditText editText = this.editText;
        if (editText != null) {
            return calculateLabelMarginTop() + getPaddingTop() + editText.getBaseline();
        }
        return super.getBaseline();
    }

    public final MaterialShapeDrawable getDropDownMaterialShapeDrawable(boolean z) {
        float f;
        float dimensionPixelOffset;
        int i;
        float dimensionPixelOffset2 = getResources().getDimensionPixelOffset(com.android.systemui.R.dimen.mtrl_shape_corner_size_small_component);
        if (z) {
            f = dimensionPixelOffset2;
        } else {
            f = 0.0f;
        }
        EditText editText = this.editText;
        if (editText instanceof MaterialAutoCompleteTextView) {
            dimensionPixelOffset = ((MaterialAutoCompleteTextView) editText).popupElevation;
        } else {
            dimensionPixelOffset = getResources().getDimensionPixelOffset(com.android.systemui.R.dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        }
        int dimensionPixelOffset3 = getResources().getDimensionPixelOffset(com.android.systemui.R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        RelativeCornerSize relativeCornerSize = ShapeAppearanceModel.PILL;
        ShapeAppearanceModel.Builder builder = new ShapeAppearanceModel.Builder();
        builder.setTopLeftCornerSize(f);
        builder.setTopRightCornerSize(f);
        builder.setBottomLeftCornerSize(dimensionPixelOffset2);
        builder.setBottomRightCornerSize(dimensionPixelOffset2);
        ShapeAppearanceModel build = builder.build();
        Context context = getContext();
        Paint paint = MaterialShapeDrawable.clearPaint;
        TypedValue resolveTypedValueOrThrow = MaterialAttributes.resolveTypedValueOrThrow(context, "MaterialShapeDrawable", com.android.systemui.R.attr.colorSurface);
        int i2 = resolveTypedValueOrThrow.resourceId;
        if (i2 != 0) {
            Object obj = ContextCompat.sLock;
            i = context.getColor(i2);
        } else {
            i = resolveTypedValueOrThrow.data;
        }
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        materialShapeDrawable.initializeElevationOverlay(context);
        materialShapeDrawable.setFillColor(ColorStateList.valueOf(i));
        materialShapeDrawable.setElevation(dimensionPixelOffset);
        materialShapeDrawable.setShapeAppearanceModel(build);
        MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState = materialShapeDrawable.drawableState;
        if (materialShapeDrawableState.padding == null) {
            materialShapeDrawableState.padding = new Rect();
        }
        materialShapeDrawable.drawableState.padding.set(0, dimensionPixelOffset3, 0, dimensionPixelOffset3);
        materialShapeDrawable.invalidateSelf();
        return materialShapeDrawable;
    }

    public final float getHintCollapsedTextHeight() {
        return this.collapsingTextHelper.getCollapsedTextHeight();
    }

    public final int getHintCurrentCollapsedTextColor() {
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        return collapsingTextHelper.getCurrentColor(collapsingTextHelper.collapsedTextColor);
    }

    public final int getLabelLeftBoundAlightWithPrefix(int i, boolean z) {
        int compoundPaddingLeft = this.editText.getCompoundPaddingLeft() + i;
        StartCompoundLayout startCompoundLayout = this.startLayout;
        if (startCompoundLayout.prefixText != null && !z) {
            return (compoundPaddingLeft - startCompoundLayout.prefixTextView.getMeasuredWidth()) + this.startLayout.prefixTextView.getPaddingLeft();
        }
        return compoundPaddingLeft;
    }

    public final int getLabelRightBoundAlignedWithSuffix(int i, boolean z) {
        int compoundPaddingRight = i - this.editText.getCompoundPaddingRight();
        StartCompoundLayout startCompoundLayout = this.startLayout;
        if (startCompoundLayout.prefixText != null && z) {
            return compoundPaddingRight + (startCompoundLayout.prefixTextView.getMeasuredWidth() - this.startLayout.prefixTextView.getPaddingRight());
        }
        return compoundPaddingRight;
    }

    public final boolean isHelperTextDisplayed() {
        IndicatorViewController indicatorViewController = this.indicatorViewController;
        if (indicatorViewController.captionDisplayed == 2 && indicatorViewController.helperTextView != null && !TextUtils.isEmpty(indicatorViewController.helperText)) {
            return true;
        }
        return false;
    }

    public final void onApplyBoxBackgroundMode() {
        boolean z;
        boolean z2;
        int i = this.boxBackgroundMode;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    if (this.hintEnabled && !(this.boxBackground instanceof CutoutDrawable)) {
                        this.boxBackground = new CutoutDrawable(this.shapeAppearanceModel);
                    } else {
                        this.boxBackground = new MaterialShapeDrawable(this.shapeAppearanceModel);
                    }
                    this.boxUnderlineDefault = null;
                    this.boxUnderlineFocused = null;
                } else {
                    throw new IllegalArgumentException(ConstraintWidget$$ExternalSyntheticOutline0.m(new StringBuilder(), this.boxBackgroundMode, " is illegal; only @BoxBackgroundMode constants are supported."));
                }
            } else {
                this.boxBackground = new MaterialShapeDrawable(this.shapeAppearanceModel);
                this.boxUnderlineDefault = new MaterialShapeDrawable();
                this.boxUnderlineFocused = new MaterialShapeDrawable();
            }
        } else {
            this.boxBackground = null;
            this.boxUnderlineDefault = null;
            this.boxUnderlineFocused = null;
        }
        updateEditTextBoxBackgroundIfNeeded();
        updateTextInputBoxState();
        if (this.boxBackgroundMode == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                this.boxCollapsedPaddingTopPx = getResources().getDimensionPixelSize(com.android.systemui.R.dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (MaterialResources.isFontScaleAtLeast1_3(getContext())) {
                this.boxCollapsedPaddingTopPx = getResources().getDimensionPixelSize(com.android.systemui.R.dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
        if (this.editText != null && this.boxBackgroundMode == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                EditText editText = this.editText;
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                ViewCompat.Api17Impl.setPaddingRelative(editText, ViewCompat.Api17Impl.getPaddingStart(editText), getResources().getDimensionPixelSize(com.android.systemui.R.dimen.material_filled_edittext_font_2_0_padding_top), ViewCompat.Api17Impl.getPaddingEnd(this.editText), getResources().getDimensionPixelSize(com.android.systemui.R.dimen.material_filled_edittext_font_2_0_padding_bottom));
            } else if (MaterialResources.isFontScaleAtLeast1_3(getContext())) {
                EditText editText2 = this.editText;
                WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
                ViewCompat.Api17Impl.setPaddingRelative(editText2, ViewCompat.Api17Impl.getPaddingStart(editText2), getResources().getDimensionPixelSize(com.android.systemui.R.dimen.material_filled_edittext_font_1_3_padding_top), ViewCompat.Api17Impl.getPaddingEnd(this.editText), getResources().getDimensionPixelSize(com.android.systemui.R.dimen.material_filled_edittext_font_1_3_padding_bottom));
            }
        }
        if (this.boxBackgroundMode != 0) {
            updateInputLayoutMargins();
        }
        EditText editText3 = this.editText;
        if (editText3 instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText3;
            if (autoCompleteTextView.getDropDownBackground() == null) {
                int i2 = this.boxBackgroundMode;
                if (i2 == 2) {
                    if (this.outlinedDropDownMenuBackground == null) {
                        this.outlinedDropDownMenuBackground = getDropDownMaterialShapeDrawable(true);
                    }
                    autoCompleteTextView.setDropDownBackgroundDrawable(this.outlinedDropDownMenuBackground);
                } else if (i2 == 1) {
                    if (this.filledDropDownMenuBackground == null) {
                        StateListDrawable stateListDrawable = new StateListDrawable();
                        this.filledDropDownMenuBackground = stateListDrawable;
                        int[] iArr = {R.attr.state_above_anchor};
                        if (this.outlinedDropDownMenuBackground == null) {
                            this.outlinedDropDownMenuBackground = getDropDownMaterialShapeDrawable(true);
                        }
                        stateListDrawable.addState(iArr, this.outlinedDropDownMenuBackground);
                        this.filledDropDownMenuBackground.addState(new int[0], getDropDownMaterialShapeDrawable(false));
                    }
                    autoCompleteTextView.setDropDownBackgroundDrawable(this.filledDropDownMenuBackground);
                }
            }
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.collapsingTextHelper.maybeUpdateFontWeightAdjustment(configuration);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        boolean z3;
        int compoundPaddingTop;
        boolean z4;
        int compoundPaddingBottom;
        boolean z5;
        super.onLayout(z, i, i2, i3, i4);
        EditText editText = this.editText;
        if (editText != null) {
            Rect rect = this.tmpRect;
            DescendantOffsetUtils.getDescendantRect(this, editText, rect);
            MaterialShapeDrawable materialShapeDrawable = this.boxUnderlineDefault;
            if (materialShapeDrawable != null) {
                int i5 = rect.bottom;
                materialShapeDrawable.setBounds(rect.left, i5 - this.boxStrokeWidthDefaultPx, rect.right, i5);
            }
            MaterialShapeDrawable materialShapeDrawable2 = this.boxUnderlineFocused;
            if (materialShapeDrawable2 != null) {
                int i6 = rect.bottom;
                materialShapeDrawable2.setBounds(rect.left, i6 - this.boxStrokeWidthFocusedPx, rect.right, i6);
            }
            if (this.hintEnabled) {
                CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
                float textSize = this.editText.getTextSize();
                if (collapsingTextHelper.expandedTextSize != textSize) {
                    collapsingTextHelper.expandedTextSize = textSize;
                    collapsingTextHelper.recalculate(false);
                }
                int gravity = this.editText.getGravity();
                CollapsingTextHelper collapsingTextHelper2 = this.collapsingTextHelper;
                int i7 = (gravity & (-113)) | 48;
                if (collapsingTextHelper2.collapsedTextGravity != i7) {
                    collapsingTextHelper2.collapsedTextGravity = i7;
                    collapsingTextHelper2.recalculate(false);
                }
                CollapsingTextHelper collapsingTextHelper3 = this.collapsingTextHelper;
                if (collapsingTextHelper3.expandedTextGravity != gravity) {
                    collapsingTextHelper3.expandedTextGravity = gravity;
                    collapsingTextHelper3.recalculate(false);
                }
                CollapsingTextHelper collapsingTextHelper4 = this.collapsingTextHelper;
                if (this.editText != null) {
                    Rect rect2 = this.tmpBoundsRect;
                    boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
                    rect2.bottom = rect.bottom;
                    int i8 = this.boxBackgroundMode;
                    if (i8 != 1) {
                        if (i8 != 2) {
                            rect2.left = getLabelLeftBoundAlightWithPrefix(rect.left, isLayoutRtl);
                            rect2.top = getPaddingTop();
                            rect2.right = getLabelRightBoundAlignedWithSuffix(rect.right, isLayoutRtl);
                        } else {
                            rect2.left = this.editText.getPaddingLeft() + rect.left;
                            rect2.top = rect.top - calculateLabelMarginTop();
                            rect2.right = rect.right - this.editText.getPaddingRight();
                        }
                    } else {
                        rect2.left = getLabelLeftBoundAlightWithPrefix(rect.left, isLayoutRtl);
                        rect2.top = rect.top + this.boxCollapsedPaddingTopPx;
                        rect2.right = getLabelRightBoundAlignedWithSuffix(rect.right, isLayoutRtl);
                    }
                    collapsingTextHelper4.getClass();
                    int i9 = rect2.left;
                    int i10 = rect2.top;
                    int i11 = rect2.right;
                    int i12 = rect2.bottom;
                    Rect rect3 = collapsingTextHelper4.collapsedBounds;
                    if (rect3.left == i9 && rect3.top == i10 && rect3.right == i11 && rect3.bottom == i12) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (!z2) {
                        rect3.set(i9, i10, i11, i12);
                        collapsingTextHelper4.boundsChanged = true;
                    }
                    CollapsingTextHelper collapsingTextHelper5 = this.collapsingTextHelper;
                    if (this.editText != null) {
                        Rect rect4 = this.tmpBoundsRect;
                        TextPaint textPaint = collapsingTextHelper5.tmpPaint;
                        textPaint.setTextSize(collapsingTextHelper5.expandedTextSize);
                        textPaint.setTypeface(collapsingTextHelper5.expandedTypeface);
                        textPaint.setLetterSpacing(collapsingTextHelper5.expandedLetterSpacing);
                        float f = -textPaint.ascent();
                        rect4.left = this.editText.getCompoundPaddingLeft() + rect.left;
                        if (this.boxBackgroundMode == 1 && this.editText.getMinLines() <= 1) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z3) {
                            compoundPaddingTop = (int) (rect.centerY() - (f / 2.0f));
                        } else {
                            compoundPaddingTop = rect.top + this.editText.getCompoundPaddingTop();
                        }
                        rect4.top = compoundPaddingTop;
                        rect4.right = rect.right - this.editText.getCompoundPaddingRight();
                        if (this.boxBackgroundMode == 1 && this.editText.getMinLines() <= 1) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (z4) {
                            compoundPaddingBottom = (int) (rect4.top + f);
                        } else {
                            compoundPaddingBottom = rect.bottom - this.editText.getCompoundPaddingBottom();
                        }
                        rect4.bottom = compoundPaddingBottom;
                        int i13 = rect4.left;
                        int i14 = rect4.top;
                        int i15 = rect4.right;
                        Rect rect5 = collapsingTextHelper5.expandedBounds;
                        if (rect5.left == i13 && rect5.top == i14 && rect5.right == i15 && rect5.bottom == compoundPaddingBottom) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if (!z5) {
                            rect5.set(i13, i14, i15, compoundPaddingBottom);
                            collapsingTextHelper5.boundsChanged = true;
                        }
                        this.collapsingTextHelper.recalculate(false);
                        if (cutoutEnabled() && !this.hintExpanded) {
                            openCutout();
                            return;
                        }
                        return;
                    }
                    throw new IllegalStateException();
                }
                throw new IllegalStateException();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        boolean z;
        EditText editText;
        int max;
        super.onMeasure(i, i2);
        if (this.editText != null && this.editText.getMeasuredHeight() < (max = Math.max(this.endLayout.getMeasuredHeight(), this.startLayout.getMeasuredHeight()))) {
            this.editText.setMinimumHeight(max);
            z = true;
        } else {
            z = false;
        }
        boolean updateDummyDrawables = updateDummyDrawables();
        if (z || updateDummyDrawables) {
            this.editText.post(new Runnable() { // from class: com.google.android.material.textfield.TextInputLayout.3
                @Override // java.lang.Runnable
                public final void run() {
                    TextInputLayout.this.editText.requestLayout();
                }
            });
        }
        if (this.placeholderTextView != null && (editText = this.editText) != null) {
            this.placeholderTextView.setGravity(editText.getGravity());
            this.placeholderTextView.setPadding(this.editText.getCompoundPaddingLeft(), this.editText.getCompoundPaddingTop(), this.editText.getCompoundPaddingRight(), this.editText.getCompoundPaddingBottom());
        }
        this.endLayout.updateSuffixTextViewPadding();
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.mSuperState);
        setError(savedState.error);
        if (savedState.isEndIconChecked) {
            post(new Runnable() { // from class: com.google.android.material.textfield.TextInputLayout.2
                @Override // java.lang.Runnable
                public final void run() {
                    EndCompoundLayout endCompoundLayout = TextInputLayout.this.endLayout;
                    endCompoundLayout.endIconView.performClick();
                    endCompoundLayout.endIconView.jumpDrawablesToCurrentState();
                }
            });
        }
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onRtlPropertiesChanged(int i) {
        boolean z;
        float f;
        float f2;
        float f3;
        float f4;
        super.onRtlPropertiesChanged(i);
        boolean z2 = false;
        if (i == 1) {
            z = true;
        } else {
            z = false;
        }
        boolean z3 = this.areCornerRadiiRtl;
        if (z != z3) {
            if (z && !z3) {
                z2 = true;
            }
            float cornerSize = this.shapeAppearanceModel.topLeftCornerSize.getCornerSize(this.tmpRectF);
            float cornerSize2 = this.shapeAppearanceModel.topRightCornerSize.getCornerSize(this.tmpRectF);
            float cornerSize3 = this.shapeAppearanceModel.bottomLeftCornerSize.getCornerSize(this.tmpRectF);
            float cornerSize4 = this.shapeAppearanceModel.bottomRightCornerSize.getCornerSize(this.tmpRectF);
            if (z2) {
                f = cornerSize;
            } else {
                f = cornerSize2;
            }
            if (z2) {
                cornerSize = cornerSize2;
            }
            if (z2) {
                f2 = cornerSize3;
            } else {
                f2 = cornerSize4;
            }
            if (z2) {
                cornerSize3 = cornerSize4;
            }
            boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
            this.areCornerRadiiRtl = isLayoutRtl;
            if (isLayoutRtl) {
                f3 = cornerSize;
            } else {
                f3 = f;
            }
            if (!isLayoutRtl) {
                f = cornerSize;
            }
            if (isLayoutRtl) {
                f4 = cornerSize3;
            } else {
                f4 = f2;
            }
            if (!isLayoutRtl) {
                f2 = cornerSize3;
            }
            MaterialShapeDrawable materialShapeDrawable = this.boxBackground;
            if (materialShapeDrawable != null && materialShapeDrawable.getTopLeftCornerResolvedSize() == f3) {
                MaterialShapeDrawable materialShapeDrawable2 = this.boxBackground;
                if (materialShapeDrawable2.drawableState.shapeAppearanceModel.topRightCornerSize.getCornerSize(materialShapeDrawable2.getBoundsAsRectF()) == f) {
                    MaterialShapeDrawable materialShapeDrawable3 = this.boxBackground;
                    if (materialShapeDrawable3.drawableState.shapeAppearanceModel.bottomLeftCornerSize.getCornerSize(materialShapeDrawable3.getBoundsAsRectF()) == f4) {
                        MaterialShapeDrawable materialShapeDrawable4 = this.boxBackground;
                        if (materialShapeDrawable4.drawableState.shapeAppearanceModel.bottomRightCornerSize.getCornerSize(materialShapeDrawable4.getBoundsAsRectF()) == f2) {
                            return;
                        }
                    }
                }
            }
            ShapeAppearanceModel shapeAppearanceModel = this.shapeAppearanceModel;
            shapeAppearanceModel.getClass();
            ShapeAppearanceModel.Builder builder = new ShapeAppearanceModel.Builder(shapeAppearanceModel);
            builder.setTopLeftCornerSize(f3);
            builder.setTopRightCornerSize(f);
            builder.setBottomLeftCornerSize(f4);
            builder.setBottomRightCornerSize(f2);
            this.shapeAppearanceModel = builder.build();
            applyBoxAttributes();
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        boolean z;
        CharSequence charSequence;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (shouldShowError()) {
            IndicatorViewController indicatorViewController = this.indicatorViewController;
            if (indicatorViewController.errorEnabled) {
                charSequence = indicatorViewController.errorText;
            } else {
                charSequence = null;
            }
            savedState.error = charSequence;
        }
        EndCompoundLayout endCompoundLayout = this.endLayout;
        boolean z2 = true;
        if (endCompoundLayout.endIconMode != 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z || !endCompoundLayout.endIconView.isChecked()) {
            z2 = false;
        }
        savedState.isEndIconChecked = z2;
        return savedState;
    }

    public final void openCutout() {
        float f;
        float f2;
        float f3;
        float f4;
        int i;
        int i2;
        if (!cutoutEnabled()) {
            return;
        }
        RectF rectF = this.tmpRectF;
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        int width = this.editText.getWidth();
        int gravity = this.editText.getGravity();
        boolean calculateIsRtl = collapsingTextHelper.calculateIsRtl(collapsingTextHelper.text);
        collapsingTextHelper.isRtl = calculateIsRtl;
        Rect rect = collapsingTextHelper.collapsedBounds;
        if (gravity != 17 && (gravity & 7) != 1) {
            if ((gravity & 8388613) != 8388613 && (gravity & 5) != 5) {
                if (calculateIsRtl) {
                    f = rect.right;
                    f2 = collapsingTextHelper.collapsedTextWidth;
                } else {
                    i2 = rect.left;
                    f3 = i2;
                }
            } else if (calculateIsRtl) {
                i2 = rect.left;
                f3 = i2;
            } else {
                f = rect.right;
                f2 = collapsingTextHelper.collapsedTextWidth;
            }
            float max = Math.max(f3, rect.left);
            rectF.left = max;
            rectF.top = rect.top;
            if (gravity == 17 && (gravity & 7) != 1) {
                if ((gravity & 8388613) != 8388613 && (gravity & 5) != 5) {
                    if (collapsingTextHelper.isRtl) {
                        i = rect.right;
                        f4 = i;
                    } else {
                        f4 = collapsingTextHelper.collapsedTextWidth + max;
                    }
                } else if (collapsingTextHelper.isRtl) {
                    f4 = collapsingTextHelper.collapsedTextWidth + max;
                } else {
                    i = rect.right;
                    f4 = i;
                }
            } else {
                f4 = (width / 2.0f) + (collapsingTextHelper.collapsedTextWidth / 2.0f);
            }
            rectF.right = Math.min(f4, rect.right);
            rectF.bottom = collapsingTextHelper.getCollapsedTextHeight() + rect.top;
            if (rectF.width() <= 0.0f && rectF.height() > 0.0f) {
                float f5 = rectF.left;
                float f6 = this.boxLabelCutoutPaddingPx;
                rectF.left = f5 - f6;
                rectF.right += f6;
                rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.boxStrokeWidthPx);
                CutoutDrawable cutoutDrawable = (CutoutDrawable) this.boxBackground;
                cutoutDrawable.getClass();
                cutoutDrawable.setCutout(rectF.left, rectF.top, rectF.right, rectF.bottom);
                return;
            }
        }
        f = width / 2.0f;
        f2 = collapsingTextHelper.collapsedTextWidth / 2.0f;
        f3 = f - f2;
        float max2 = Math.max(f3, rect.left);
        rectF.left = max2;
        rectF.top = rect.top;
        if (gravity == 17) {
        }
        f4 = (width / 2.0f) + (collapsingTextHelper.collapsedTextWidth / 2.0f);
        rectF.right = Math.min(f4, rect.right);
        rectF.bottom = collapsingTextHelper.getCollapsedTextHeight() + rect.top;
        if (rectF.width() <= 0.0f) {
        }
    }

    @Override // android.view.View
    public final void setEnabled(boolean z) {
        recursiveSetEnabled(this, z);
        super.setEnabled(z);
    }

    public final void setError(CharSequence charSequence) {
        if (!this.indicatorViewController.errorEnabled) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (!TextUtils.isEmpty(charSequence)) {
            IndicatorViewController indicatorViewController = this.indicatorViewController;
            indicatorViewController.cancelCaptionAnimator();
            indicatorViewController.errorText = charSequence;
            indicatorViewController.errorView.setText(charSequence);
            int i = indicatorViewController.captionDisplayed;
            if (i != 1) {
                indicatorViewController.captionToShow = 1;
            }
            indicatorViewController.updateCaptionViewsVisibility(i, indicatorViewController.captionToShow, indicatorViewController.shouldAnimateCaptionView(indicatorViewController.errorView, charSequence));
            return;
        }
        this.indicatorViewController.hideError();
    }

    public final void setErrorEnabled(boolean z) {
        IndicatorViewController indicatorViewController = this.indicatorViewController;
        if (indicatorViewController.errorEnabled != z) {
            indicatorViewController.cancelCaptionAnimator();
            TextInputLayout textInputLayout = indicatorViewController.textInputView;
            if (z) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(indicatorViewController.context);
                indicatorViewController.errorView = appCompatTextView;
                appCompatTextView.setId(com.android.systemui.R.id.textinput_error);
                indicatorViewController.errorView.setTextAlignment(5);
                int i = indicatorViewController.errorTextAppearance;
                indicatorViewController.errorTextAppearance = i;
                AppCompatTextView appCompatTextView2 = indicatorViewController.errorView;
                if (appCompatTextView2 != null) {
                    textInputLayout.setTextAppearanceCompatWithErrorFallback(i, appCompatTextView2);
                }
                ColorStateList colorStateList = indicatorViewController.errorViewTextColor;
                indicatorViewController.errorViewTextColor = colorStateList;
                AppCompatTextView appCompatTextView3 = indicatorViewController.errorView;
                if (appCompatTextView3 != null && colorStateList != null) {
                    appCompatTextView3.setTextColor(colorStateList);
                }
                CharSequence charSequence = indicatorViewController.errorViewContentDescription;
                indicatorViewController.errorViewContentDescription = charSequence;
                AppCompatTextView appCompatTextView4 = indicatorViewController.errorView;
                if (appCompatTextView4 != null) {
                    appCompatTextView4.setContentDescription(charSequence);
                }
                indicatorViewController.errorView.setVisibility(4);
                AppCompatTextView appCompatTextView5 = indicatorViewController.errorView;
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                ViewCompat.Api19Impl.setAccessibilityLiveRegion(appCompatTextView5, 1);
                indicatorViewController.addIndicator(0, indicatorViewController.errorView);
            } else {
                indicatorViewController.hideError();
                indicatorViewController.removeIndicator(0, indicatorViewController.errorView);
                indicatorViewController.errorView = null;
                textInputLayout.updateEditTextBackground();
                textInputLayout.updateTextInputBoxState();
            }
            indicatorViewController.errorEnabled = z;
        }
    }

    public final void setHelperTextEnabled(boolean z) {
        final IndicatorViewController indicatorViewController = this.indicatorViewController;
        if (indicatorViewController.helperTextEnabled != z) {
            indicatorViewController.cancelCaptionAnimator();
            if (z) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(indicatorViewController.context);
                indicatorViewController.helperTextView = appCompatTextView;
                appCompatTextView.setId(com.android.systemui.R.id.textinput_helper_text);
                indicatorViewController.helperTextView.setTextAlignment(5);
                indicatorViewController.helperTextView.setVisibility(4);
                AppCompatTextView appCompatTextView2 = indicatorViewController.helperTextView;
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                ViewCompat.Api19Impl.setAccessibilityLiveRegion(appCompatTextView2, 1);
                int i = indicatorViewController.helperTextTextAppearance;
                indicatorViewController.helperTextTextAppearance = i;
                AppCompatTextView appCompatTextView3 = indicatorViewController.helperTextView;
                if (appCompatTextView3 != null) {
                    appCompatTextView3.setTextAppearance(i);
                }
                ColorStateList colorStateList = indicatorViewController.helperTextViewTextColor;
                indicatorViewController.helperTextViewTextColor = colorStateList;
                AppCompatTextView appCompatTextView4 = indicatorViewController.helperTextView;
                if (appCompatTextView4 != null && colorStateList != null) {
                    appCompatTextView4.setTextColor(colorStateList);
                }
                indicatorViewController.addIndicator(1, indicatorViewController.helperTextView);
                indicatorViewController.helperTextView.setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: com.google.android.material.textfield.IndicatorViewController.2
                    @Override // android.view.View.AccessibilityDelegate
                    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                        EditText editText = IndicatorViewController.this.textInputView.editText;
                        if (editText != null) {
                            accessibilityNodeInfo.setLabeledBy(editText);
                        }
                    }
                });
            } else {
                indicatorViewController.cancelCaptionAnimator();
                int i2 = indicatorViewController.captionDisplayed;
                if (i2 == 2) {
                    indicatorViewController.captionToShow = 0;
                }
                indicatorViewController.updateCaptionViewsVisibility(i2, indicatorViewController.captionToShow, indicatorViewController.shouldAnimateCaptionView(indicatorViewController.helperTextView, ""));
                indicatorViewController.removeIndicator(1, indicatorViewController.helperTextView);
                indicatorViewController.helperTextView = null;
                TextInputLayout textInputLayout = indicatorViewController.textInputView;
                textInputLayout.updateEditTextBackground();
                textInputLayout.updateTextInputBoxState();
            }
            indicatorViewController.helperTextEnabled = z;
        }
    }

    public final void setHint(CharSequence charSequence) {
        if (this.hintEnabled) {
            if (!TextUtils.equals(charSequence, this.hint)) {
                this.hint = charSequence;
                CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
                if (charSequence == null || !TextUtils.equals(collapsingTextHelper.text, charSequence)) {
                    collapsingTextHelper.text = charSequence;
                    collapsingTextHelper.textToDraw = null;
                    Bitmap bitmap = collapsingTextHelper.expandedTitleTexture;
                    if (bitmap != null) {
                        bitmap.recycle();
                        collapsingTextHelper.expandedTitleTexture = null;
                    }
                    collapsingTextHelper.recalculate(false);
                }
                if (!this.hintExpanded) {
                    openCutout();
                }
            }
            sendAccessibilityEvent(2048);
        }
    }

    public final void setPlaceholderTextEnabled(boolean z) {
        if (this.placeholderEnabled == z) {
            return;
        }
        if (z) {
            AppCompatTextView appCompatTextView = this.placeholderTextView;
            if (appCompatTextView != null) {
                this.inputFrame.addView(appCompatTextView);
                this.placeholderTextView.setVisibility(0);
            }
        } else {
            AppCompatTextView appCompatTextView2 = this.placeholderTextView;
            if (appCompatTextView2 != null) {
                appCompatTextView2.setVisibility(8);
            }
            this.placeholderTextView = null;
        }
        this.placeholderEnabled = z;
    }

    public final void setTextAppearanceCompatWithErrorFallback(int i, TextView textView) {
        boolean z = true;
        try {
            textView.setTextAppearance(i);
            if (textView.getTextColors().getDefaultColor() != -65281) {
                z = false;
            }
        } catch (Exception unused) {
        }
        if (z) {
            textView.setTextAppearance(2132018033);
            Context context = getContext();
            Object obj = ContextCompat.sLock;
            textView.setTextColor(context.getColor(com.android.systemui.R.color.design_error));
        }
    }

    public final boolean shouldShowError() {
        IndicatorViewController indicatorViewController = this.indicatorViewController;
        if (indicatorViewController.captionToShow == 1 && indicatorViewController.errorView != null && !TextUtils.isEmpty(indicatorViewController.errorText)) {
            return true;
        }
        return false;
    }

    public final void updateCounter(Editable editable) {
        int i;
        boolean z;
        int i2;
        getClass();
        if (editable != null) {
            i = editable.length();
        } else {
            i = 0;
        }
        boolean z2 = this.counterOverflowed;
        int i3 = this.counterMaxLength;
        if (i3 == -1) {
            this.counterView.setText(String.valueOf(i));
            this.counterView.setContentDescription(null);
            this.counterOverflowed = false;
        } else {
            if (i > i3) {
                z = true;
            } else {
                z = false;
            }
            this.counterOverflowed = z;
            Context context = getContext();
            AppCompatTextView appCompatTextView = this.counterView;
            int i4 = this.counterMaxLength;
            if (this.counterOverflowed) {
                i2 = com.android.systemui.R.string.character_counter_overflowed_content_description;
            } else {
                i2 = com.android.systemui.R.string.character_counter_content_description;
            }
            appCompatTextView.setContentDescription(context.getString(i2, Integer.valueOf(i), Integer.valueOf(i4)));
            if (z2 != this.counterOverflowed) {
                updateCounterTextAppearanceAndColor();
            }
            this.counterView.setText(BidiFormatter.getInstance().unicodeWrap(getContext().getString(com.android.systemui.R.string.character_counter_pattern, Integer.valueOf(i), Integer.valueOf(this.counterMaxLength))));
        }
        if (this.editText != null && z2 != this.counterOverflowed) {
            updateLabelState(false, false);
            updateTextInputBoxState();
            updateEditTextBackground();
        }
    }

    public final void updateCounterTextAppearanceAndColor() {
        int i;
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        AppCompatTextView appCompatTextView = this.counterView;
        if (appCompatTextView != null) {
            if (this.counterOverflowed) {
                i = this.counterOverflowTextAppearance;
            } else {
                i = this.counterTextAppearance;
            }
            setTextAppearanceCompatWithErrorFallback(i, appCompatTextView);
            if (!this.counterOverflowed && (colorStateList2 = this.counterTextColor) != null) {
                this.counterView.setTextColor(colorStateList2);
            }
            if (this.counterOverflowed && (colorStateList = this.counterOverflowTextColor) != null) {
                this.counterView.setTextColor(colorStateList);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001d, code lost:
    
        if (r0.prefixTextView.getVisibility() == 0) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0099, code lost:
    
        if (r6.isEndIconVisible() != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x009f, code lost:
    
        if (r10.endLayout.suffixText != null) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean updateDummyDrawables() {
        /*
            Method dump skipped, instructions count: 340
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.updateDummyDrawables():boolean");
    }

    public final void updateEditTextBackground() {
        Drawable background;
        AppCompatTextView appCompatTextView;
        PorterDuffColorFilter porterDuffColorFilter;
        int i;
        PorterDuffColorFilter porterDuffColorFilter2;
        EditText editText = this.editText;
        if (editText == null || this.boxBackgroundMode != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        Rect rect = DrawableUtils.INSETS_NONE;
        Drawable mutate = background.mutate();
        if (shouldShowError()) {
            AppCompatTextView appCompatTextView2 = this.indicatorViewController.errorView;
            if (appCompatTextView2 != null) {
                i = appCompatTextView2.getCurrentTextColor();
            } else {
                i = -1;
            }
            PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
            AppCompatDrawableManager appCompatDrawableManager = AppCompatDrawableManager.INSTANCE;
            synchronized (AppCompatDrawableManager.class) {
                porterDuffColorFilter2 = ResourceManagerInternal.getPorterDuffColorFilter(i, mode);
            }
            mutate.setColorFilter(porterDuffColorFilter2);
            return;
        }
        if (this.counterOverflowed && (appCompatTextView = this.counterView) != null) {
            int currentTextColor = appCompatTextView.getCurrentTextColor();
            PorterDuff.Mode mode2 = PorterDuff.Mode.SRC_IN;
            AppCompatDrawableManager appCompatDrawableManager2 = AppCompatDrawableManager.INSTANCE;
            synchronized (AppCompatDrawableManager.class) {
                porterDuffColorFilter = ResourceManagerInternal.getPorterDuffColorFilter(currentTextColor, mode2);
            }
            mutate.setColorFilter(porterDuffColorFilter);
            return;
        }
        mutate.clearColorFilter();
        this.editText.refreshDrawableState();
    }

    public final void updateEditTextBoxBackgroundIfNeeded() {
        Drawable drawable;
        boolean z;
        int i;
        EditText editText = this.editText;
        if (editText != null && this.boxBackground != null) {
            if ((this.boxBackgroundApplied || editText.getBackground() == null) && this.boxBackgroundMode != 0) {
                EditText editText2 = this.editText;
                if (editText2 instanceof AutoCompleteTextView) {
                    if (editText2.getInputType() != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!z) {
                        int color = MaterialColors.getColor(this.editText, com.android.systemui.R.attr.colorControlHighlight);
                        int i2 = this.boxBackgroundMode;
                        int[][] iArr = EDIT_TEXT_BACKGROUND_RIPPLE_STATE;
                        if (i2 == 2) {
                            Context context = getContext();
                            MaterialShapeDrawable materialShapeDrawable = this.boxBackground;
                            TypedValue resolveTypedValueOrThrow = MaterialAttributes.resolveTypedValueOrThrow(context, "TextInputLayout", com.android.systemui.R.attr.colorSurface);
                            int i3 = resolveTypedValueOrThrow.resourceId;
                            if (i3 != 0) {
                                Object obj = ContextCompat.sLock;
                                i = context.getColor(i3);
                            } else {
                                i = resolveTypedValueOrThrow.data;
                            }
                            MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(materialShapeDrawable.drawableState.shapeAppearanceModel);
                            int layer = MaterialColors.layer(0.1f, color, i);
                            materialShapeDrawable2.setFillColor(new ColorStateList(iArr, new int[]{layer, 0}));
                            materialShapeDrawable2.setTint(i);
                            ColorStateList colorStateList = new ColorStateList(iArr, new int[]{layer, i});
                            MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(materialShapeDrawable.drawableState.shapeAppearanceModel);
                            materialShapeDrawable3.setTint(-1);
                            drawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, materialShapeDrawable2, materialShapeDrawable3), materialShapeDrawable});
                        } else if (i2 == 1) {
                            MaterialShapeDrawable materialShapeDrawable4 = this.boxBackground;
                            int i4 = this.boxBackgroundColor;
                            drawable = new RippleDrawable(new ColorStateList(iArr, new int[]{MaterialColors.layer(0.1f, color, i4), i4}), materialShapeDrawable4, materialShapeDrawable4);
                        } else {
                            drawable = null;
                        }
                        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                        ViewCompat.Api16Impl.setBackground(editText2, drawable);
                        this.boxBackgroundApplied = true;
                    }
                }
                drawable = this.boxBackground;
                WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
                ViewCompat.Api16Impl.setBackground(editText2, drawable);
                this.boxBackgroundApplied = true;
            }
        }
    }

    public final void updateInputLayoutMargins() {
        if (this.boxBackgroundMode != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.inputFrame.getLayoutParams();
            int calculateLabelMarginTop = calculateLabelMarginTop();
            if (calculateLabelMarginTop != layoutParams.topMargin) {
                layoutParams.topMargin = calculateLabelMarginTop;
                this.inputFrame.requestLayout();
            }
        }
    }

    public final void updateLabelState(boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        ColorStateList colorStateList;
        AppCompatTextView appCompatTextView;
        ColorStateList colorStateList2;
        int i;
        boolean isEnabled = isEnabled();
        EditText editText = this.editText;
        if (editText != null && !TextUtils.isEmpty(editText.getText())) {
            z3 = true;
        } else {
            z3 = false;
        }
        EditText editText2 = this.editText;
        if (editText2 != null && editText2.hasFocus()) {
            z4 = true;
        } else {
            z4 = false;
        }
        ColorStateList colorStateList3 = this.defaultHintTextColor;
        if (colorStateList3 != null) {
            this.collapsingTextHelper.setCollapsedTextColor(colorStateList3);
            CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
            ColorStateList colorStateList4 = this.defaultHintTextColor;
            if (collapsingTextHelper.expandedTextColor != colorStateList4) {
                collapsingTextHelper.expandedTextColor = colorStateList4;
                collapsingTextHelper.recalculate(false);
            }
        }
        Editable editable = null;
        if (!isEnabled) {
            ColorStateList colorStateList5 = this.defaultHintTextColor;
            if (colorStateList5 != null) {
                i = colorStateList5.getColorForState(new int[]{-16842910}, this.disabledColor);
            } else {
                i = this.disabledColor;
            }
            this.collapsingTextHelper.setCollapsedTextColor(ColorStateList.valueOf(i));
            CollapsingTextHelper collapsingTextHelper2 = this.collapsingTextHelper;
            ColorStateList valueOf = ColorStateList.valueOf(i);
            if (collapsingTextHelper2.expandedTextColor != valueOf) {
                collapsingTextHelper2.expandedTextColor = valueOf;
                collapsingTextHelper2.recalculate(false);
            }
        } else if (shouldShowError()) {
            CollapsingTextHelper collapsingTextHelper3 = this.collapsingTextHelper;
            AppCompatTextView appCompatTextView2 = this.indicatorViewController.errorView;
            if (appCompatTextView2 != null) {
                colorStateList2 = appCompatTextView2.getTextColors();
            } else {
                colorStateList2 = null;
            }
            collapsingTextHelper3.setCollapsedTextColor(colorStateList2);
        } else if (this.counterOverflowed && (appCompatTextView = this.counterView) != null) {
            this.collapsingTextHelper.setCollapsedTextColor(appCompatTextView.getTextColors());
        } else if (z4 && (colorStateList = this.focusedTextColor) != null) {
            this.collapsingTextHelper.setCollapsedTextColor(colorStateList);
        }
        if (!z3 && this.expandedHintEnabled && (!isEnabled() || !z4)) {
            if (z2 || !this.hintExpanded) {
                ValueAnimator valueAnimator = this.animator;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.animator.cancel();
                }
                if (z && this.hintAnimationEnabled) {
                    animateToExpansionFraction(0.0f);
                } else {
                    this.collapsingTextHelper.setExpansionFraction(0.0f);
                }
                if (cutoutEnabled() && (!((CutoutDrawable) this.boxBackground).cutoutBounds.isEmpty()) && cutoutEnabled()) {
                    ((CutoutDrawable) this.boxBackground).setCutout(0.0f, 0.0f, 0.0f, 0.0f);
                }
                this.hintExpanded = true;
                AppCompatTextView appCompatTextView3 = this.placeholderTextView;
                if (appCompatTextView3 != null && this.placeholderEnabled) {
                    appCompatTextView3.setText((CharSequence) null);
                    TransitionManager.beginDelayedTransition(this.placeholderFadeOut, this.inputFrame);
                    this.placeholderTextView.setVisibility(4);
                }
                StartCompoundLayout startCompoundLayout = this.startLayout;
                startCompoundLayout.hintExpanded = true;
                startCompoundLayout.updateVisibility();
                EndCompoundLayout endCompoundLayout = this.endLayout;
                endCompoundLayout.hintExpanded = true;
                endCompoundLayout.updateSuffixTextVisibility();
                return;
            }
            return;
        }
        if (z2 || this.hintExpanded) {
            ValueAnimator valueAnimator2 = this.animator;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.animator.cancel();
            }
            if (z && this.hintAnimationEnabled) {
                animateToExpansionFraction(1.0f);
            } else {
                this.collapsingTextHelper.setExpansionFraction(1.0f);
            }
            this.hintExpanded = false;
            if (cutoutEnabled()) {
                openCutout();
            }
            EditText editText3 = this.editText;
            if (editText3 != null) {
                editable = editText3.getText();
            }
            updatePlaceholderText(editable);
            StartCompoundLayout startCompoundLayout2 = this.startLayout;
            startCompoundLayout2.hintExpanded = false;
            startCompoundLayout2.updateVisibility();
            EndCompoundLayout endCompoundLayout2 = this.endLayout;
            endCompoundLayout2.hintExpanded = false;
            endCompoundLayout2.updateSuffixTextVisibility();
        }
    }

    public final void updatePlaceholderText(Editable editable) {
        int i;
        getClass();
        if (editable != null) {
            i = editable.length();
        } else {
            i = 0;
        }
        if (i == 0 && !this.hintExpanded) {
            if (this.placeholderTextView != null && this.placeholderEnabled && !TextUtils.isEmpty(this.placeholderText)) {
                this.placeholderTextView.setText(this.placeholderText);
                TransitionManager.beginDelayedTransition(this.placeholderFadeIn, this.inputFrame);
                this.placeholderTextView.setVisibility(0);
                this.placeholderTextView.bringToFront();
                announceForAccessibility(this.placeholderText);
                return;
            }
            return;
        }
        AppCompatTextView appCompatTextView = this.placeholderTextView;
        if (appCompatTextView != null && this.placeholderEnabled) {
            appCompatTextView.setText((CharSequence) null);
            TransitionManager.beginDelayedTransition(this.placeholderFadeOut, this.inputFrame);
            this.placeholderTextView.setVisibility(4);
        }
    }

    public final void updateStrokeErrorColor(boolean z, boolean z2) {
        int defaultColor = this.strokeErrorColor.getDefaultColor();
        int colorForState = this.strokeErrorColor.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.strokeErrorColor.getColorForState(new int[]{R.attr.state_activated, R.attr.state_enabled}, defaultColor);
        if (z) {
            this.boxStrokeColor = colorForState2;
        } else if (z2) {
            this.boxStrokeColor = colorForState;
        } else {
            this.boxStrokeColor = defaultColor;
        }
    }

    public final void updateTextInputBoxState() {
        boolean z;
        AppCompatTextView appCompatTextView;
        int i;
        EditText editText;
        EditText editText2;
        if (this.boxBackground != null && this.boxBackgroundMode != 0) {
            boolean z2 = false;
            if (!isFocused() && ((editText2 = this.editText) == null || !editText2.hasFocus())) {
                z = false;
            } else {
                z = true;
            }
            if (isHovered() || ((editText = this.editText) != null && editText.isHovered())) {
                z2 = true;
            }
            int i2 = -1;
            if (!isEnabled()) {
                this.boxStrokeColor = this.disabledColor;
            } else if (shouldShowError()) {
                if (this.strokeErrorColor != null) {
                    updateStrokeErrorColor(z, z2);
                } else {
                    AppCompatTextView appCompatTextView2 = this.indicatorViewController.errorView;
                    if (appCompatTextView2 != null) {
                        i = appCompatTextView2.getCurrentTextColor();
                    } else {
                        i = -1;
                    }
                    this.boxStrokeColor = i;
                }
            } else if (this.counterOverflowed && (appCompatTextView = this.counterView) != null) {
                if (this.strokeErrorColor != null) {
                    updateStrokeErrorColor(z, z2);
                } else {
                    this.boxStrokeColor = appCompatTextView.getCurrentTextColor();
                }
            } else if (z) {
                this.boxStrokeColor = this.focusedStrokeColor;
            } else if (z2) {
                this.boxStrokeColor = this.hoveredStrokeColor;
            } else {
                this.boxStrokeColor = this.defaultStrokeColor;
            }
            EndCompoundLayout endCompoundLayout = this.endLayout;
            endCompoundLayout.updateErrorIconVisibility();
            IconHelper.refreshIconDrawableState(endCompoundLayout.textInputLayout, endCompoundLayout.errorIconView, endCompoundLayout.errorIconTintList);
            IconHelper.refreshIconDrawableState(endCompoundLayout.textInputLayout, endCompoundLayout.endIconView, endCompoundLayout.endIconTintList);
            if (endCompoundLayout.getEndIconDelegate() instanceof DropdownMenuEndIconDelegate) {
                if (endCompoundLayout.textInputLayout.shouldShowError() && endCompoundLayout.endIconView.getDrawable() != null) {
                    Drawable mutate = endCompoundLayout.endIconView.getDrawable().mutate();
                    AppCompatTextView appCompatTextView3 = endCompoundLayout.textInputLayout.indicatorViewController.errorView;
                    if (appCompatTextView3 != null) {
                        i2 = appCompatTextView3.getCurrentTextColor();
                    }
                    mutate.setTint(i2);
                    endCompoundLayout.endIconView.setImageDrawable(mutate);
                } else {
                    IconHelper.applyIconTint(endCompoundLayout.textInputLayout, endCompoundLayout.endIconView, endCompoundLayout.endIconTintList, endCompoundLayout.endIconTintMode);
                }
            }
            StartCompoundLayout startCompoundLayout = this.startLayout;
            IconHelper.refreshIconDrawableState(startCompoundLayout.textInputLayout, startCompoundLayout.startIconView, startCompoundLayout.startIconTintList);
            if (this.boxBackgroundMode == 2) {
                int i3 = this.boxStrokeWidthPx;
                if (z && isEnabled()) {
                    this.boxStrokeWidthPx = this.boxStrokeWidthFocusedPx;
                } else {
                    this.boxStrokeWidthPx = this.boxStrokeWidthDefaultPx;
                }
                if (this.boxStrokeWidthPx != i3 && cutoutEnabled() && !this.hintExpanded) {
                    if (cutoutEnabled()) {
                        ((CutoutDrawable) this.boxBackground).setCutout(0.0f, 0.0f, 0.0f, 0.0f);
                    }
                    openCutout();
                }
            }
            if (this.boxBackgroundMode == 1) {
                if (!isEnabled()) {
                    this.boxBackgroundColor = this.disabledFilledBackgroundColor;
                } else if (z2 && !z) {
                    this.boxBackgroundColor = this.hoveredFilledBackgroundColor;
                } else if (z) {
                    this.boxBackgroundColor = this.focusedFilledBackgroundColor;
                } else {
                    this.boxBackgroundColor = this.defaultFilledBackgroundColor;
                }
            }
            applyBoxAttributes();
        }
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.android.systemui.R.attr.textInputStyle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v103 */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r3v37, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r3v89 */
    public TextInputLayout(Context context, AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, 2132018831), attributeSet, i);
        ?? r3;
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        ColorStateList colorStateList4;
        ColorStateList colorStateList5;
        this.minEms = -1;
        this.maxEms = -1;
        this.minWidth = -1;
        this.maxWidth = -1;
        IndicatorViewController indicatorViewController = new IndicatorViewController(this);
        this.indicatorViewController = indicatorViewController;
        this.lengthCounter = new ViewCompat$$ExternalSyntheticLambda0();
        this.tmpRect = new Rect();
        this.tmpBoundsRect = new Rect();
        this.tmpRectF = new RectF();
        this.editTextAttachedListeners = new LinkedHashSet();
        CollapsingTextHelper collapsingTextHelper = new CollapsingTextHelper(this);
        this.collapsingTextHelper = collapsingTextHelper;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.inputFrame = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        TimeInterpolator timeInterpolator = AnimationUtils.LINEAR_INTERPOLATOR;
        collapsingTextHelper.textSizeInterpolator = timeInterpolator;
        collapsingTextHelper.recalculate(false);
        collapsingTextHelper.positionInterpolator = timeInterpolator;
        collapsingTextHelper.recalculate(false);
        if (collapsingTextHelper.collapsedTextGravity != 8388659) {
            collapsingTextHelper.collapsedTextGravity = 8388659;
            collapsingTextHelper.recalculate(false);
        }
        TintTypedArray obtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, R$styleable.TextInputLayout, i, 2132018831, 22, 20, 35, 40, 44);
        StartCompoundLayout startCompoundLayout = new StartCompoundLayout(this, obtainTintedStyledAttributes);
        this.startLayout = startCompoundLayout;
        this.hintEnabled = obtainTintedStyledAttributes.getBoolean(43, true);
        setHint(obtainTintedStyledAttributes.getText(4));
        this.hintAnimationEnabled = obtainTintedStyledAttributes.getBoolean(42, true);
        this.expandedHintEnabled = obtainTintedStyledAttributes.getBoolean(37, true);
        if (obtainTintedStyledAttributes.hasValue(6)) {
            int i2 = obtainTintedStyledAttributes.getInt(6, -1);
            this.minEms = i2;
            EditText editText = this.editText;
            if (editText != null && i2 != -1) {
                editText.setMinEms(i2);
            }
        } else if (obtainTintedStyledAttributes.hasValue(3)) {
            int dimensionPixelSize = obtainTintedStyledAttributes.getDimensionPixelSize(3, -1);
            this.minWidth = dimensionPixelSize;
            EditText editText2 = this.editText;
            if (editText2 != null && dimensionPixelSize != -1) {
                editText2.setMinWidth(dimensionPixelSize);
            }
        }
        if (obtainTintedStyledAttributes.hasValue(5)) {
            int i3 = obtainTintedStyledAttributes.getInt(5, -1);
            this.maxEms = i3;
            EditText editText3 = this.editText;
            if (editText3 != null && i3 != -1) {
                editText3.setMaxEms(i3);
            }
        } else if (obtainTintedStyledAttributes.hasValue(2)) {
            int dimensionPixelSize2 = obtainTintedStyledAttributes.getDimensionPixelSize(2, -1);
            this.maxWidth = dimensionPixelSize2;
            EditText editText4 = this.editText;
            if (editText4 != null && dimensionPixelSize2 != -1) {
                editText4.setMaxWidth(dimensionPixelSize2);
            }
        }
        this.shapeAppearanceModel = ShapeAppearanceModel.builder(context2, attributeSet, i, 2132018831).build();
        this.boxLabelCutoutPaddingPx = context2.getResources().getDimensionPixelOffset(com.android.systemui.R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.boxCollapsedPaddingTopPx = obtainTintedStyledAttributes.getDimensionPixelOffset(9, 0);
        int dimensionPixelSize3 = obtainTintedStyledAttributes.getDimensionPixelSize(16, context2.getResources().getDimensionPixelSize(com.android.systemui.R.dimen.mtrl_textinput_box_stroke_width_default));
        this.boxStrokeWidthDefaultPx = dimensionPixelSize3;
        this.boxStrokeWidthFocusedPx = obtainTintedStyledAttributes.getDimensionPixelSize(17, context2.getResources().getDimensionPixelSize(com.android.systemui.R.dimen.mtrl_textinput_box_stroke_width_focused));
        this.boxStrokeWidthPx = dimensionPixelSize3;
        TypedArray typedArray = obtainTintedStyledAttributes.mWrapped;
        float dimension = typedArray.getDimension(13, -1.0f);
        float dimension2 = typedArray.getDimension(12, -1.0f);
        float dimension3 = typedArray.getDimension(10, -1.0f);
        float dimension4 = typedArray.getDimension(11, -1.0f);
        ShapeAppearanceModel shapeAppearanceModel = this.shapeAppearanceModel;
        shapeAppearanceModel.getClass();
        ShapeAppearanceModel.Builder builder = new ShapeAppearanceModel.Builder(shapeAppearanceModel);
        if (dimension >= 0.0f) {
            builder.setTopLeftCornerSize(dimension);
        }
        if (dimension2 >= 0.0f) {
            builder.setTopRightCornerSize(dimension2);
        }
        if (dimension3 >= 0.0f) {
            builder.setBottomRightCornerSize(dimension3);
        }
        if (dimension4 >= 0.0f) {
            builder.setBottomLeftCornerSize(dimension4);
        }
        this.shapeAppearanceModel = builder.build();
        ColorStateList colorStateList6 = MaterialResources.getColorStateList(context2, obtainTintedStyledAttributes, 7);
        if (colorStateList6 != null) {
            int defaultColor = colorStateList6.getDefaultColor();
            this.defaultFilledBackgroundColor = defaultColor;
            this.boxBackgroundColor = defaultColor;
            if (colorStateList6.isStateful()) {
                this.disabledFilledBackgroundColor = colorStateList6.getColorForState(new int[]{-16842910}, -1);
                this.focusedFilledBackgroundColor = colorStateList6.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
                this.hoveredFilledBackgroundColor = colorStateList6.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            } else {
                this.focusedFilledBackgroundColor = defaultColor;
                ColorStateList colorStateList7 = ContextCompat.getColorStateList(com.android.systemui.R.color.mtrl_filled_background_color, context2);
                this.disabledFilledBackgroundColor = colorStateList7.getColorForState(new int[]{-16842910}, -1);
                this.hoveredFilledBackgroundColor = colorStateList7.getColorForState(new int[]{R.attr.state_hovered}, -1);
            }
        } else {
            this.boxBackgroundColor = 0;
            this.defaultFilledBackgroundColor = 0;
            this.disabledFilledBackgroundColor = 0;
            this.focusedFilledBackgroundColor = 0;
            this.hoveredFilledBackgroundColor = 0;
        }
        if (obtainTintedStyledAttributes.hasValue(1)) {
            ColorStateList colorStateList8 = obtainTintedStyledAttributes.getColorStateList(1);
            this.focusedTextColor = colorStateList8;
            this.defaultHintTextColor = colorStateList8;
        }
        ColorStateList colorStateList9 = MaterialResources.getColorStateList(context2, obtainTintedStyledAttributes, 14);
        this.focusedStrokeColor = typedArray.getColor(14, 0);
        Object obj = ContextCompat.sLock;
        this.defaultStrokeColor = context2.getColor(com.android.systemui.R.color.mtrl_textinput_default_box_stroke_color);
        this.disabledColor = context2.getColor(com.android.systemui.R.color.mtrl_textinput_disabled_color);
        this.hoveredStrokeColor = context2.getColor(com.android.systemui.R.color.mtrl_textinput_hovered_box_stroke_color);
        if (colorStateList9 != null) {
            if (colorStateList9.isStateful()) {
                this.defaultStrokeColor = colorStateList9.getDefaultColor();
                this.disabledColor = colorStateList9.getColorForState(new int[]{-16842910}, -1);
                this.hoveredStrokeColor = colorStateList9.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
                this.focusedStrokeColor = colorStateList9.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
            } else if (this.focusedStrokeColor != colorStateList9.getDefaultColor()) {
                this.focusedStrokeColor = colorStateList9.getDefaultColor();
            }
            updateTextInputBoxState();
        }
        if (obtainTintedStyledAttributes.hasValue(15) && this.strokeErrorColor != (colorStateList5 = MaterialResources.getColorStateList(context2, obtainTintedStyledAttributes, 15))) {
            this.strokeErrorColor = colorStateList5;
            updateTextInputBoxState();
        }
        if (obtainTintedStyledAttributes.getResourceId(44, -1) != -1) {
            r3 = 0;
            r3 = 0;
            collapsingTextHelper.setCollapsedTextAppearance(obtainTintedStyledAttributes.getResourceId(44, 0));
            this.focusedTextColor = collapsingTextHelper.collapsedTextColor;
            if (this.editText != null) {
                updateLabelState(false, false);
                updateInputLayoutMargins();
            }
        } else {
            r3 = 0;
        }
        int resourceId = obtainTintedStyledAttributes.getResourceId(35, r3);
        CharSequence text = obtainTintedStyledAttributes.getText(30);
        boolean z = obtainTintedStyledAttributes.getBoolean(31, r3);
        int resourceId2 = obtainTintedStyledAttributes.getResourceId(40, r3);
        boolean z2 = obtainTintedStyledAttributes.getBoolean(39, r3);
        CharSequence text2 = obtainTintedStyledAttributes.getText(38);
        int resourceId3 = obtainTintedStyledAttributes.getResourceId(52, r3);
        CharSequence text3 = obtainTintedStyledAttributes.getText(51);
        boolean z3 = obtainTintedStyledAttributes.getBoolean(18, r3);
        int i4 = obtainTintedStyledAttributes.getInt(19, -1);
        if (this.counterMaxLength != i4) {
            if (i4 > 0) {
                this.counterMaxLength = i4;
            } else {
                this.counterMaxLength = -1;
            }
            if (this.counterEnabled && this.counterView != null) {
                EditText editText5 = this.editText;
                updateCounter(editText5 == null ? null : editText5.getText());
            }
        }
        this.counterTextAppearance = obtainTintedStyledAttributes.getResourceId(22, 0);
        this.counterOverflowTextAppearance = obtainTintedStyledAttributes.getResourceId(20, 0);
        int i5 = obtainTintedStyledAttributes.getInt(8, 0);
        if (i5 != this.boxBackgroundMode) {
            this.boxBackgroundMode = i5;
            if (this.editText != null) {
                onApplyBoxBackgroundMode();
            }
        }
        indicatorViewController.errorViewContentDescription = text;
        AppCompatTextView appCompatTextView = indicatorViewController.errorView;
        if (appCompatTextView != null) {
            appCompatTextView.setContentDescription(text);
        }
        indicatorViewController.helperTextTextAppearance = resourceId2;
        AppCompatTextView appCompatTextView2 = indicatorViewController.helperTextView;
        if (appCompatTextView2 != null) {
            appCompatTextView2.setTextAppearance(resourceId2);
        }
        indicatorViewController.errorTextAppearance = resourceId;
        AppCompatTextView appCompatTextView3 = indicatorViewController.errorView;
        if (appCompatTextView3 != null) {
            indicatorViewController.textInputView.setTextAppearanceCompatWithErrorFallback(resourceId, appCompatTextView3);
        }
        if (this.placeholderTextView == null) {
            AppCompatTextView appCompatTextView4 = new AppCompatTextView(getContext());
            this.placeholderTextView = appCompatTextView4;
            appCompatTextView4.setId(com.android.systemui.R.id.textinput_placeholder);
            AppCompatTextView appCompatTextView5 = this.placeholderTextView;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            ViewCompat.Api16Impl.setImportantForAccessibility(appCompatTextView5, 2);
            Fade fade = new Fade();
            fade.mDuration = 87L;
            fade.mInterpolator = timeInterpolator;
            this.placeholderFadeIn = fade;
            fade.mStartDelay = 67L;
            Fade fade2 = new Fade();
            fade2.mDuration = 87L;
            fade2.mInterpolator = timeInterpolator;
            this.placeholderFadeOut = fade2;
            int i6 = this.placeholderTextAppearance;
            this.placeholderTextAppearance = i6;
            AppCompatTextView appCompatTextView6 = this.placeholderTextView;
            if (appCompatTextView6 != null) {
                appCompatTextView6.setTextAppearance(i6);
            }
        }
        if (TextUtils.isEmpty(text3)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.placeholderEnabled) {
                setPlaceholderTextEnabled(true);
            }
            this.placeholderText = text3;
        }
        EditText editText6 = this.editText;
        updatePlaceholderText(editText6 == null ? null : editText6.getText());
        this.placeholderTextAppearance = resourceId3;
        AppCompatTextView appCompatTextView7 = this.placeholderTextView;
        if (appCompatTextView7 != null) {
            appCompatTextView7.setTextAppearance(resourceId3);
        }
        if (obtainTintedStyledAttributes.hasValue(36)) {
            ColorStateList colorStateList10 = obtainTintedStyledAttributes.getColorStateList(36);
            indicatorViewController.errorViewTextColor = colorStateList10;
            AppCompatTextView appCompatTextView8 = indicatorViewController.errorView;
            if (appCompatTextView8 != null && colorStateList10 != null) {
                appCompatTextView8.setTextColor(colorStateList10);
            }
        }
        if (obtainTintedStyledAttributes.hasValue(41)) {
            ColorStateList colorStateList11 = obtainTintedStyledAttributes.getColorStateList(41);
            indicatorViewController.helperTextViewTextColor = colorStateList11;
            AppCompatTextView appCompatTextView9 = indicatorViewController.helperTextView;
            if (appCompatTextView9 != null && colorStateList11 != null) {
                appCompatTextView9.setTextColor(colorStateList11);
            }
        }
        if (obtainTintedStyledAttributes.hasValue(45) && this.focusedTextColor != (colorStateList4 = obtainTintedStyledAttributes.getColorStateList(45))) {
            if (this.defaultHintTextColor == null) {
                collapsingTextHelper.setCollapsedTextColor(colorStateList4);
            }
            this.focusedTextColor = colorStateList4;
            if (this.editText != null) {
                updateLabelState(false, false);
            }
        }
        if (obtainTintedStyledAttributes.hasValue(23) && this.counterTextColor != (colorStateList3 = obtainTintedStyledAttributes.getColorStateList(23))) {
            this.counterTextColor = colorStateList3;
            updateCounterTextAppearanceAndColor();
        }
        if (obtainTintedStyledAttributes.hasValue(21) && this.counterOverflowTextColor != (colorStateList2 = obtainTintedStyledAttributes.getColorStateList(21))) {
            this.counterOverflowTextColor = colorStateList2;
            updateCounterTextAppearanceAndColor();
        }
        if (obtainTintedStyledAttributes.hasValue(53) && this.placeholderTextColor != (colorStateList = obtainTintedStyledAttributes.getColorStateList(53))) {
            this.placeholderTextColor = colorStateList;
            AppCompatTextView appCompatTextView10 = this.placeholderTextView;
            if (appCompatTextView10 != null && colorStateList != null) {
                appCompatTextView10.setTextColor(colorStateList);
            }
        }
        EndCompoundLayout endCompoundLayout = new EndCompoundLayout(this, obtainTintedStyledAttributes);
        this.endLayout = endCompoundLayout;
        boolean z4 = obtainTintedStyledAttributes.getBoolean(0, true);
        obtainTintedStyledAttributes.recycle();
        WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api16Impl.setImportantForAccessibility(this, 2);
        ViewCompat.Api26Impl.setImportantForAutofill(this, 1);
        frameLayout.addView(startCompoundLayout);
        frameLayout.addView(endCompoundLayout);
        addView(frameLayout);
        setEnabled(z4);
        setHelperTextEnabled(z2);
        setErrorEnabled(z);
        if (this.counterEnabled != z3) {
            if (z3) {
                AppCompatTextView appCompatTextView11 = new AppCompatTextView(getContext());
                this.counterView = appCompatTextView11;
                appCompatTextView11.setId(com.android.systemui.R.id.textinput_counter);
                this.counterView.setMaxLines(1);
                indicatorViewController.addIndicator(2, this.counterView);
                ((ViewGroup.MarginLayoutParams) this.counterView.getLayoutParams()).setMarginStart(getResources().getDimensionPixelOffset(com.android.systemui.R.dimen.mtrl_textinput_counter_margin_start));
                updateCounterTextAppearanceAndColor();
                if (this.counterView != null) {
                    EditText editText7 = this.editText;
                    updateCounter(editText7 == null ? null : editText7.getText());
                }
            } else {
                indicatorViewController.removeIndicator(2, this.counterView);
                this.counterView = null;
            }
            this.counterEnabled = z3;
        }
        if (TextUtils.isEmpty(text2)) {
            if (indicatorViewController.helperTextEnabled) {
                setHelperTextEnabled(false);
                return;
            }
            return;
        }
        if (!indicatorViewController.helperTextEnabled) {
            setHelperTextEnabled(true);
        }
        indicatorViewController.cancelCaptionAnimator();
        indicatorViewController.helperText = text2;
        indicatorViewController.helperTextView.setText(text2);
        int i7 = indicatorViewController.captionDisplayed;
        if (i7 != 2) {
            indicatorViewController.captionToShow = 2;
        }
        indicatorViewController.updateCaptionViewsVisibility(i7, indicatorViewController.captionToShow, indicatorViewController.shouldAnimateCaptionView(indicatorViewController.helperTextView, text2));
    }
}
