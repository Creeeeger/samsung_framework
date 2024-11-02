package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CompoundButton;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AppCompatCompoundButtonHelper {
    public ColorStateList mButtonTintList = null;
    public PorterDuff.Mode mButtonTintMode = null;
    public boolean mHasButtonTint = false;
    public boolean mHasButtonTintMode = false;
    public boolean mSkipNextApply;
    public final CompoundButton mView;

    public AppCompatCompoundButtonHelper(CompoundButton compoundButton) {
        this.mView = compoundButton;
    }

    public final void applyButtonTint() {
        CompoundButton compoundButton = this.mView;
        Drawable buttonDrawable = compoundButton.getButtonDrawable();
        if (buttonDrawable != null) {
            if (this.mHasButtonTint || this.mHasButtonTintMode) {
                Drawable mutate = buttonDrawable.mutate();
                if (this.mHasButtonTint) {
                    mutate.setTintList(this.mButtonTintList);
                }
                if (this.mHasButtonTintMode) {
                    mutate.setTintMode(this.mButtonTintMode);
                }
                if (mutate.isStateful()) {
                    mutate.setState(compoundButton.getDrawableState());
                }
                compoundButton.setButtonDrawable(mutate);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0057 A[Catch: all -> 0x0076, TryCatch #1 {all -> 0x0076, blocks: (B:3:0x001e, B:5:0x0024, B:8:0x002a, B:10:0x0039, B:12:0x003f, B:14:0x0045, B:15:0x0050, B:17:0x0057, B:18:0x005e, B:20:0x0065), top: B:2:0x001e }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0065 A[Catch: all -> 0x0076, TRY_LEAVE, TryCatch #1 {all -> 0x0076, blocks: (B:3:0x001e, B:5:0x0024, B:8:0x002a, B:10:0x0039, B:12:0x003f, B:14:0x0045, B:15:0x0050, B:17:0x0057, B:18:0x005e, B:20:0x0065), top: B:2:0x001e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void loadFromAttributes(android.util.AttributeSet r11, int r12) {
        /*
            r10 = this;
            android.widget.CompoundButton r0 = r10.mView
            android.content.Context r1 = r0.getContext()
            int[] r4 = androidx.appcompat.R$styleable.CompoundButton
            r9 = 0
            androidx.appcompat.widget.TintTypedArray r1 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(r1, r11, r4, r12, r9)
            android.widget.CompoundButton r2 = r10.mView
            android.content.Context r3 = r2.getContext()
            android.content.res.TypedArray r6 = r1.mWrapped
            r8 = 0
            java.util.WeakHashMap r10 = androidx.core.view.ViewCompat.sViewPropertyAnimatorMap
            r5 = r11
            r7 = r12
            androidx.core.view.ViewCompat.Api29Impl.saveAttributeDataForStyleable(r2, r3, r4, r5, r6, r7, r8)
            r10 = 1
            boolean r11 = r1.hasValue(r10)     // Catch: java.lang.Throwable -> L76
            if (r11 == 0) goto L36
            int r11 = r1.getResourceId(r10, r9)     // Catch: java.lang.Throwable -> L76
            if (r11 == 0) goto L36
            android.content.Context r12 = r0.getContext()     // Catch: android.content.res.Resources.NotFoundException -> L36 java.lang.Throwable -> L76
            android.graphics.drawable.Drawable r11 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r11, r12)     // Catch: android.content.res.Resources.NotFoundException -> L36 java.lang.Throwable -> L76
            r0.setButtonDrawable(r11)     // Catch: android.content.res.Resources.NotFoundException -> L36 java.lang.Throwable -> L76
            goto L37
        L36:
            r10 = r9
        L37:
            if (r10 != 0) goto L50
            boolean r10 = r1.hasValue(r9)     // Catch: java.lang.Throwable -> L76
            if (r10 == 0) goto L50
            int r10 = r1.getResourceId(r9, r9)     // Catch: java.lang.Throwable -> L76
            if (r10 == 0) goto L50
            android.content.Context r11 = r0.getContext()     // Catch: java.lang.Throwable -> L76
            android.graphics.drawable.Drawable r10 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r10, r11)     // Catch: java.lang.Throwable -> L76
            r0.setButtonDrawable(r10)     // Catch: java.lang.Throwable -> L76
        L50:
            r10 = 2
            boolean r11 = r1.hasValue(r10)     // Catch: java.lang.Throwable -> L76
            if (r11 == 0) goto L5e
            android.content.res.ColorStateList r10 = r1.getColorStateList(r10)     // Catch: java.lang.Throwable -> L76
            r0.setButtonTintList(r10)     // Catch: java.lang.Throwable -> L76
        L5e:
            r10 = 3
            boolean r11 = r1.hasValue(r10)     // Catch: java.lang.Throwable -> L76
            if (r11 == 0) goto L72
            r11 = -1
            int r10 = r1.getInt(r10, r11)     // Catch: java.lang.Throwable -> L76
            r11 = 0
            android.graphics.PorterDuff$Mode r10 = androidx.appcompat.widget.DrawableUtils.parseTintMode(r10, r11)     // Catch: java.lang.Throwable -> L76
            r0.setButtonTintMode(r10)     // Catch: java.lang.Throwable -> L76
        L72:
            r1.recycle()
            return
        L76:
            r10 = move-exception
            r1.recycle()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatCompoundButtonHelper.loadFromAttributes(android.util.AttributeSet, int):void");
    }
}
