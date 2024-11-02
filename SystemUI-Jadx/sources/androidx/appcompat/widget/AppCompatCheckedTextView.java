package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.widget.TextViewCompat;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class AppCompatCheckedTextView extends CheckedTextView {
    public AppCompatEmojiTextHelper mAppCompatEmojiTextHelper;
    public final AppCompatBackgroundHelper mBackgroundTintHelper;
    public final AppCompatCheckedTextViewHelper mCheckedHelper;
    public final AppCompatTextHelper mTextHelper;

    public AppCompatCheckedTextView(Context context) {
        this(context, null);
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.applyCompoundDrawablesTints();
        }
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.applySupportBackgroundTint();
        }
        AppCompatCheckedTextViewHelper appCompatCheckedTextViewHelper = this.mCheckedHelper;
        if (appCompatCheckedTextViewHelper != null) {
            appCompatCheckedTextViewHelper.applyCheckMarkTint();
        }
    }

    @Override // android.widget.TextView
    public final ActionMode.Callback getCustomSelectionActionModeCallback() {
        return TextViewCompat.unwrapCustomSelectionActionModeCallback(super.getCustomSelectionActionModeCallback());
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        AppCompatHintHelper.onCreateInputConnection(this, editorInfo, onCreateInputConnection);
        return onCreateInputConnection;
    }

    @Override // android.widget.TextView
    public final void setAllCaps(boolean z) {
        super.setAllCaps(z);
        if (this.mAppCompatEmojiTextHelper == null) {
            this.mAppCompatEmojiTextHelper = new AppCompatEmojiTextHelper(this);
        }
        this.mAppCompatEmojiTextHelper.setAllCaps(z);
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.onSetBackgroundDrawable();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.onSetBackgroundResource(i);
        }
    }

    @Override // android.widget.CheckedTextView
    public final void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        AppCompatCheckedTextViewHelper appCompatCheckedTextViewHelper = this.mCheckedHelper;
        if (appCompatCheckedTextViewHelper != null) {
            if (appCompatCheckedTextViewHelper.mSkipNextApply) {
                appCompatCheckedTextViewHelper.mSkipNextApply = false;
            } else {
                appCompatCheckedTextViewHelper.mSkipNextApply = true;
                appCompatCheckedTextViewHelper.applyCheckMarkTint();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.applyCompoundDrawablesTints();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.applyCompoundDrawablesTints();
        }
    }

    @Override // android.widget.TextView
    public final void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(callback);
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.onSetTextAppearance(i, context);
        }
    }

    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkedTextViewStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0083 A[Catch: all -> 0x00b2, TryCatch #0 {all -> 0x00b2, blocks: (B:3:0x0048, B:5:0x004f, B:8:0x0055, B:11:0x0065, B:13:0x006b, B:15:0x0071, B:16:0x007c, B:18:0x0083, B:19:0x008a, B:21:0x0091), top: B:2:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0091 A[Catch: all -> 0x00b2, TRY_LEAVE, TryCatch #0 {all -> 0x00b2, blocks: (B:3:0x0048, B:5:0x004f, B:8:0x0055, B:11:0x0065, B:13:0x006b, B:15:0x0071, B:16:0x007c, B:18:0x0083, B:19:0x008a, B:21:0x0091), top: B:2:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public AppCompatCheckedTextView(android.content.Context r10, android.util.AttributeSet r11, int r12) {
        /*
            r9 = this;
            androidx.appcompat.widget.TintContextWrapper.wrap(r10)
            r9.<init>(r10, r11, r12)
            android.content.Context r10 = r9.getContext()
            androidx.appcompat.widget.ThemeUtils.checkAppCompatTheme(r10, r9)
            androidx.appcompat.widget.AppCompatTextHelper r10 = new androidx.appcompat.widget.AppCompatTextHelper
            r10.<init>(r9)
            r9.mTextHelper = r10
            r10.loadFromAttributes(r11, r12)
            r10.applyCompoundDrawablesTints()
            androidx.appcompat.widget.AppCompatBackgroundHelper r10 = new androidx.appcompat.widget.AppCompatBackgroundHelper
            r10.<init>(r9)
            r9.mBackgroundTintHelper = r10
            r10.loadFromAttributes(r11, r12)
            androidx.appcompat.widget.AppCompatCheckedTextViewHelper r10 = new androidx.appcompat.widget.AppCompatCheckedTextViewHelper
            r10.<init>(r9)
            r9.mCheckedHelper = r10
            android.widget.CheckedTextView r10 = r10.mView
            android.content.Context r0 = r10.getContext()
            int[] r2 = androidx.appcompat.R$styleable.CheckedTextView
            r7 = 0
            androidx.appcompat.widget.TintTypedArray r8 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(r0, r11, r2, r12, r7)
            android.content.Context r1 = r10.getContext()
            android.content.res.TypedArray r4 = r8.mWrapped
            r6 = 0
            java.util.WeakHashMap r0 = androidx.core.view.ViewCompat.sViewPropertyAnimatorMap
            r0 = r10
            r3 = r11
            r5 = r12
            androidx.core.view.ViewCompat.Api29Impl.saveAttributeDataForStyleable(r0, r1, r2, r3, r4, r5, r6)
            r0 = 4
            boolean r1 = r8.hasValue(r0)     // Catch: java.lang.Throwable -> Lb2
            r2 = 1
            if (r1 == 0) goto L62
            int r0 = r8.getResourceId(r0, r7)     // Catch: java.lang.Throwable -> Lb2
            if (r0 == 0) goto L62
            android.content.Context r1 = r10.getContext()     // Catch: android.content.res.Resources.NotFoundException -> L62 java.lang.Throwable -> Lb2
            android.graphics.drawable.Drawable r0 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r0, r1)     // Catch: android.content.res.Resources.NotFoundException -> L62 java.lang.Throwable -> Lb2
            r10.setCheckMarkDrawable(r0)     // Catch: android.content.res.Resources.NotFoundException -> L62 java.lang.Throwable -> Lb2
            r0 = r2
            goto L63
        L62:
            r0 = r7
        L63:
            if (r0 != 0) goto L7c
            boolean r0 = r8.hasValue(r2)     // Catch: java.lang.Throwable -> Lb2
            if (r0 == 0) goto L7c
            int r0 = r8.getResourceId(r2, r7)     // Catch: java.lang.Throwable -> Lb2
            if (r0 == 0) goto L7c
            android.content.Context r1 = r10.getContext()     // Catch: java.lang.Throwable -> Lb2
            android.graphics.drawable.Drawable r0 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r0, r1)     // Catch: java.lang.Throwable -> Lb2
            r10.setCheckMarkDrawable(r0)     // Catch: java.lang.Throwable -> Lb2
        L7c:
            r0 = 6
            boolean r1 = r8.hasValue(r0)     // Catch: java.lang.Throwable -> Lb2
            if (r1 == 0) goto L8a
            android.content.res.ColorStateList r0 = r8.getColorStateList(r0)     // Catch: java.lang.Throwable -> Lb2
            r10.setCheckMarkTintList(r0)     // Catch: java.lang.Throwable -> Lb2
        L8a:
            r0 = 7
            boolean r1 = r8.hasValue(r0)     // Catch: java.lang.Throwable -> Lb2
            if (r1 == 0) goto L9e
            r1 = -1
            int r0 = r8.getInt(r0, r1)     // Catch: java.lang.Throwable -> Lb2
            r1 = 0
            android.graphics.PorterDuff$Mode r0 = androidx.appcompat.widget.DrawableUtils.parseTintMode(r0, r1)     // Catch: java.lang.Throwable -> Lb2
            r10.setCheckMarkTintMode(r0)     // Catch: java.lang.Throwable -> Lb2
        L9e:
            r8.recycle()
            androidx.appcompat.widget.AppCompatEmojiTextHelper r10 = r9.mAppCompatEmojiTextHelper
            if (r10 != 0) goto Lac
            androidx.appcompat.widget.AppCompatEmojiTextHelper r10 = new androidx.appcompat.widget.AppCompatEmojiTextHelper
            r10.<init>(r9)
            r9.mAppCompatEmojiTextHelper = r10
        Lac:
            androidx.appcompat.widget.AppCompatEmojiTextHelper r9 = r9.mAppCompatEmojiTextHelper
            r9.loadFromAttributes(r11, r12)
            return
        Lb2:
            r9 = move-exception
            r8.recycle()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatCheckedTextView.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    @Override // android.widget.CheckedTextView
    public final void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(AppCompatResources.getDrawable(i, getContext()));
    }
}
