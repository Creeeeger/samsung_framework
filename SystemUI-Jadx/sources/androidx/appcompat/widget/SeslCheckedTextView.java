package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import android.widget.CheckedTextView;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import androidx.core.view.ViewCompat;
import androidx.reflect.SeslBaseReflector;
import androidx.reflect.view.SeslViewReflector;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class SeslCheckedTextView extends TextView implements Checkable {
    public static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    public int mBasePadding;
    public Drawable mCheckMarkDrawable;
    public final int mCheckMarkGravity;
    public final ColorStateList mCheckMarkTintList;
    public final PorterDuff.Mode mCheckMarkTintMode;
    public int mCheckMarkWidth;
    public boolean mChecked;
    public final int mDrawablePadding;
    public final boolean mHasCheckMarkTint;
    public final boolean mHasCheckMarkTintMode;
    public boolean mNeedRequestlayout;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator() { // from class: androidx.appcompat.widget.SeslCheckedTextView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public boolean checked;

        public final String toString() {
            StringBuilder sb = new StringBuilder("SeslCheckedTextView.SavedState{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" checked=");
            return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.checked, "}");
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.checked));
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.checked = ((Boolean) parcel.readValue(null)).booleanValue();
        }
    }

    public SeslCheckedTextView(Context context) {
        this(context, null);
    }

    public final void applyCheckMarkTint() {
        Drawable drawable = this.mCheckMarkDrawable;
        if (drawable != null) {
            if (this.mHasCheckMarkTint || this.mHasCheckMarkTintMode) {
                Drawable mutate = drawable.mutate();
                this.mCheckMarkDrawable = mutate;
                if (this.mHasCheckMarkTint) {
                    mutate.setTintList(this.mCheckMarkTintList);
                }
                if (this.mHasCheckMarkTintMode) {
                    this.mCheckMarkDrawable.setTintMode(this.mCheckMarkTintMode);
                }
                if (this.mCheckMarkDrawable.isStateful()) {
                    this.mCheckMarkDrawable.setState(getDrawableState());
                }
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.mCheckMarkDrawable;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mCheckMarkDrawable;
        if (drawable != null && drawable.isStateful() && drawable.setState(getDrawableState())) {
            invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final CharSequence getAccessibilityClassName() {
        return CheckedTextView.class.getName();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.TextView, android.view.View, android.graphics.drawable.Drawable.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void invalidateDrawable(android.graphics.drawable.Drawable r4) {
        /*
            r3 = this;
            super.invalidateDrawable(r4)
            boolean r0 = r3.verifyDrawable(r4)
            if (r0 == 0) goto L3a
            android.graphics.Rect r4 = r4.getBounds()
            boolean r0 = androidx.appcompat.widget.ViewUtils.isLayoutRtl(r3)
            if (r0 == 0) goto L3a
            java.lang.Class r0 = androidx.reflect.widget.SeslTextViewReflector.mClass
            java.lang.String r1 = "mSingleLine"
            java.lang.reflect.Field r0 = androidx.reflect.SeslBaseReflector.getDeclaredField(r0, r1)
            if (r0 == 0) goto L2c
            java.lang.Object r0 = androidx.reflect.SeslBaseReflector.get(r0, r3)
            boolean r1 = r0 instanceof java.lang.Boolean
            if (r1 == 0) goto L2c
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            goto L2d
        L2c:
            r0 = 0
        L2d:
            if (r0 == 0) goto L3a
            int r0 = r4.left
            int r1 = r4.top
            int r2 = r4.right
            int r4 = r4.bottom
            r3.invalidate(r0, r1, r2, r4)
        L3a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SeslCheckedTextView.invalidateDrawable(android.graphics.drawable.Drawable):void");
    }

    public final boolean isCheckMarkAtStart() {
        int i = this.mCheckMarkGravity;
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        if ((Gravity.getAbsoluteGravity(i, ViewCompat.Api17Impl.getLayoutDirection(this)) & 7) == 3) {
            return true;
        }
        return false;
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.mChecked;
    }

    @Override // android.widget.TextView, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.mCheckMarkDrawable;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            TextView.mergeDrawableStates(onCreateDrawableState, CHECKED_STATE_SET);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        int height;
        int i;
        int i2;
        super.onDraw(canvas);
        Drawable drawable = this.mCheckMarkDrawable;
        if (drawable != null) {
            int gravity = getGravity() & 112;
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (gravity != 16) {
                if (gravity != 80) {
                    height = 0;
                } else {
                    height = getHeight() - intrinsicHeight;
                }
            } else {
                height = (getHeight() - intrinsicHeight) / 2;
            }
            boolean isCheckMarkAtStart = isCheckMarkAtStart();
            int width = getWidth();
            int i3 = intrinsicHeight + height;
            if (isCheckMarkAtStart) {
                i2 = this.mBasePadding;
                i = this.mCheckMarkWidth + i2;
            } else {
                i = width - this.mBasePadding;
                i2 = i - this.mCheckMarkWidth;
            }
            int scrollX = getScrollX();
            if (ViewUtils.isLayoutRtl(this)) {
                drawable.setBounds(scrollX + i2, height, scrollX + i, i3);
            } else {
                drawable.setBounds(i2, height, i, i3);
            }
            drawable.draw(canvas);
            Drawable background = getBackground();
            if (background != null) {
                background.setHotspotBounds(i2 + scrollX, height, scrollX + i, i3);
            }
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setChecked(this.mChecked);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCheckable(true);
        accessibilityNodeInfo.setChecked(this.mChecked);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setChecked(savedState.checked);
        requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0082  */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onRtlPropertiesChanged(int r8) {
        /*
            r7 = this;
            super.onRtlPropertiesChanged(r8)
            java.lang.Class r8 = androidx.reflect.view.SeslViewReflector.mClass
            r0 = 0
            java.lang.Class[] r1 = new java.lang.Class[r0]
            java.lang.String r2 = "resetPaddingToInitialValues"
            java.lang.reflect.Method r1 = androidx.reflect.SeslBaseReflector.getDeclaredMethod(r8, r2, r1)
            if (r1 == 0) goto L16
            java.lang.Object[] r2 = new java.lang.Object[r0]
            androidx.reflect.SeslBaseReflector.invoke(r7, r1, r2)
        L16:
            android.graphics.drawable.Drawable r1 = r7.mCheckMarkDrawable
            if (r1 == 0) goto L23
            int r1 = r7.mCheckMarkWidth
            int r2 = r7.mBasePadding
            int r1 = r1 + r2
            int r2 = r7.mDrawablePadding
            int r1 = r1 + r2
            goto L25
        L23:
            int r1 = r7.mBasePadding
        L25:
            boolean r2 = r7.isCheckMarkAtStart()
            r3 = 1
            if (r2 == 0) goto L5b
            boolean r2 = r7.mNeedRequestlayout
            java.lang.String r4 = "mPaddingLeft"
            java.lang.reflect.Field r5 = androidx.reflect.SeslBaseReflector.getDeclaredField(r8, r4)
            if (r5 == 0) goto L45
            java.lang.Object r5 = androidx.reflect.SeslBaseReflector.get(r5, r7)
            boolean r6 = r5 instanceof java.lang.Integer
            if (r6 == 0) goto L45
            java.lang.Integer r5 = (java.lang.Integer) r5
            int r5 = r5.intValue()
            goto L46
        L45:
            r5 = r0
        L46:
            if (r5 == r1) goto L49
            goto L4a
        L49:
            r3 = r0
        L4a:
            r2 = r2 | r3
            r7.mNeedRequestlayout = r2
            java.lang.reflect.Field r8 = androidx.reflect.SeslBaseReflector.getDeclaredField(r8, r4)
            if (r8 == 0) goto L89
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            androidx.reflect.SeslBaseReflector.set(r8, r7, r1)
            goto L89
        L5b:
            boolean r2 = r7.mNeedRequestlayout
            java.lang.String r4 = "mPaddingRight"
            java.lang.reflect.Field r5 = androidx.reflect.SeslBaseReflector.getDeclaredField(r8, r4)
            if (r5 == 0) goto L74
            java.lang.Object r5 = androidx.reflect.SeslBaseReflector.get(r5, r7)
            boolean r6 = r5 instanceof java.lang.Integer
            if (r6 == 0) goto L74
            java.lang.Integer r5 = (java.lang.Integer) r5
            int r5 = r5.intValue()
            goto L75
        L74:
            r5 = r0
        L75:
            if (r5 == r1) goto L78
            goto L79
        L78:
            r3 = r0
        L79:
            r2 = r2 | r3
            r7.mNeedRequestlayout = r2
            java.lang.reflect.Field r8 = androidx.reflect.SeslBaseReflector.getDeclaredField(r8, r4)
            if (r8 == 0) goto L89
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            androidx.reflect.SeslBaseReflector.set(r8, r7, r1)
        L89:
            boolean r8 = r7.mNeedRequestlayout
            if (r8 == 0) goto L92
            r7.requestLayout()
            r7.mNeedRequestlayout = r0
        L92:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SeslCheckedTextView.onRtlPropertiesChanged(int):void");
    }

    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.checked = isChecked();
        return savedState;
    }

    public final void setCheckMarkDrawable(Drawable drawable) {
        boolean z;
        Drawable drawable2 = this.mCheckMarkDrawable;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.mCheckMarkDrawable);
        }
        boolean z2 = true;
        if (drawable != this.mCheckMarkDrawable) {
            z = true;
        } else {
            z = false;
        }
        this.mNeedRequestlayout = z;
        drawable.setCallback(this);
        if (getVisibility() != 0) {
            z2 = false;
        }
        drawable.setVisible(z2, false);
        drawable.setState(CHECKED_STATE_SET);
        setMinHeight(drawable.getIntrinsicHeight());
        this.mCheckMarkWidth = drawable.getIntrinsicWidth();
        drawable.setState(getDrawableState());
        this.mCheckMarkDrawable = drawable;
        applyCheckMarkTint();
        Method declaredMethod = SeslBaseReflector.getDeclaredMethod(SeslViewReflector.mClass, "hidden_resolvePadding", new Class[0]);
        if (declaredMethod != null) {
            SeslBaseReflector.invoke(this, declaredMethod, new Object[0]);
        }
        if (isCheckMarkAtStart()) {
            this.mBasePadding = getPaddingLeft();
        } else {
            this.mBasePadding = getPaddingRight();
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.mChecked != z) {
            this.mChecked = z;
            refreshDrawableState();
            Method method = SeslBaseReflector.getMethod(SeslViewReflector.mClass, "hidden_notifyViewAccessibilityStateChangedIfNeeded", Integer.TYPE);
            if (method != null) {
                SeslBaseReflector.invoke(this, method, 0);
            }
        }
    }

    @Override // android.view.View
    public final void setVisibility(int i) {
        boolean z;
        super.setVisibility(i);
        Drawable drawable = this.mCheckMarkDrawable;
        if (drawable != null) {
            if (i == 0) {
                z = true;
            } else {
                z = false;
            }
            drawable.setVisible(z, false);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.mChecked);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        if (drawable != this.mCheckMarkDrawable && !super.verifyDrawable(drawable)) {
            return false;
        }
        return true;
    }

    public SeslCheckedTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.android.systemui.R.attr.checkedTextViewStyle);
    }

    public SeslCheckedTextView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public SeslCheckedTextView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mCheckMarkTintList = null;
        this.mCheckMarkTintMode = null;
        this.mHasCheckMarkTint = false;
        this.mHasCheckMarkTintMode = false;
        this.mCheckMarkGravity = 8388611;
        int[] iArr = R$styleable.CheckedTextView;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
        try {
            saveAttributeDataForStyleable(context, iArr, attributeSet, obtainStyledAttributes, i, i2);
            Drawable drawable = obtainStyledAttributes.getDrawable(1);
            if (drawable != null) {
                setCheckMarkDrawable(drawable);
            }
            if (obtainStyledAttributes.hasValue(3)) {
                this.mCheckMarkTintMode = DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(3, -1), null);
                this.mHasCheckMarkTintMode = true;
            }
            if (obtainStyledAttributes.hasValue(2)) {
                this.mCheckMarkTintList = obtainStyledAttributes.getColorStateList(2);
                this.mHasCheckMarkTint = true;
            }
            this.mCheckMarkGravity = obtainStyledAttributes.getInt(5, 8388611);
            setChecked(obtainStyledAttributes.getBoolean(0, false));
            obtainStyledAttributes.recycle();
            this.mDrawablePadding = context.getResources().getDimensionPixelSize(com.android.systemui.R.dimen.sesl_checked_text_padding);
            applyCheckMarkTint();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }
}
