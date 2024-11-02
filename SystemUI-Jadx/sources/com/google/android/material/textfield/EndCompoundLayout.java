package com.google.android.material.textfield;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.Editable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.app.ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat$TouchExplorationStateChangeListener;
import androidx.core.view.accessibility.AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;
import com.android.systemui.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class EndCompoundLayout extends LinearLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final AccessibilityManager accessibilityManager;
    public EditText editText;
    public final AnonymousClass1 editTextWatcher;
    public final LinkedHashSet endIconChangedListeners;
    public final EndIconDelegates endIconDelegates;
    public final FrameLayout endIconFrame;
    public int endIconMode;
    public View.OnLongClickListener endIconOnLongClickListener;
    public ColorStateList endIconTintList;
    public PorterDuff.Mode endIconTintMode;
    public final CheckableImageButton endIconView;
    public ColorStateList errorIconTintList;
    public PorterDuff.Mode errorIconTintMode;
    public final CheckableImageButton errorIconView;
    public boolean hintExpanded;
    public CharSequence suffixText;
    public final AppCompatTextView suffixTextView;
    public final TextInputLayout textInputLayout;
    public AccessibilityManagerCompat$TouchExplorationStateChangeListener touchExplorationStateChangeListener;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.google.android.material.textfield.EndCompoundLayout$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass2 {
        public AnonymousClass2() {
        }

        public final void onEditTextAttached(TextInputLayout textInputLayout) {
            EndCompoundLayout endCompoundLayout = EndCompoundLayout.this;
            EditText editText = endCompoundLayout.editText;
            if (editText == textInputLayout.editText) {
                return;
            }
            if (editText != null) {
                editText.removeTextChangedListener(endCompoundLayout.editTextWatcher);
                if (endCompoundLayout.editText.getOnFocusChangeListener() == endCompoundLayout.getEndIconDelegate().getOnEditTextFocusChangeListener()) {
                    endCompoundLayout.editText.setOnFocusChangeListener(null);
                }
            }
            EditText editText2 = textInputLayout.editText;
            endCompoundLayout.editText = editText2;
            if (editText2 != null) {
                editText2.addTextChangedListener(endCompoundLayout.editTextWatcher);
            }
            endCompoundLayout.getEndIconDelegate().onEditTextAttached(endCompoundLayout.editText);
            endCompoundLayout.setOnFocusChangeListenersIfNeeded(endCompoundLayout.getEndIconDelegate());
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class EndIconDelegates {
        public final int customEndIconDrawableId;
        public final SparseArray delegates = new SparseArray();
        public final EndCompoundLayout endLayout;
        public final int passwordIconDrawableId;

        public EndIconDelegates(EndCompoundLayout endCompoundLayout, TintTypedArray tintTypedArray) {
            this.endLayout = endCompoundLayout;
            this.customEndIconDrawableId = tintTypedArray.getResourceId(26, 0);
            this.passwordIconDrawableId = tintTypedArray.getResourceId(47, 0);
        }
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [com.google.android.material.textfield.EndCompoundLayout$1] */
    public EndCompoundLayout(TextInputLayout textInputLayout, TintTypedArray tintTypedArray) {
        super(textInputLayout.getContext());
        CharSequence text;
        this.endIconMode = 0;
        this.endIconChangedListeners = new LinkedHashSet();
        this.editTextWatcher = new TextWatcherAdapter() { // from class: com.google.android.material.textfield.EndCompoundLayout.1
            @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                EndCompoundLayout.this.getEndIconDelegate().afterEditTextChanged();
            }

            @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                EndCompoundLayout.this.getEndIconDelegate().beforeEditTextChanged();
            }
        };
        AnonymousClass2 anonymousClass2 = new AnonymousClass2();
        this.accessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.textInputLayout = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.endIconFrame = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        LayoutInflater from = LayoutInflater.from(getContext());
        CheckableImageButton createIconView = createIconView(this, from, R.id.text_input_error_icon);
        this.errorIconView = createIconView;
        CheckableImageButton createIconView2 = createIconView(frameLayout, from, R.id.text_input_end_icon);
        this.endIconView = createIconView2;
        this.endIconDelegates = new EndIconDelegates(this, tintTypedArray);
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.suffixTextView = appCompatTextView;
        if (tintTypedArray.hasValue(33)) {
            this.errorIconTintList = MaterialResources.getColorStateList(getContext(), tintTypedArray, 33);
        }
        if (tintTypedArray.hasValue(34)) {
            this.errorIconTintMode = ViewUtils.parseTintMode(tintTypedArray.getInt(34, -1), null);
        }
        if (tintTypedArray.hasValue(32)) {
            createIconView.setImageDrawable(tintTypedArray.getDrawable(32));
            updateErrorIconVisibility();
            IconHelper.applyIconTint(textInputLayout, createIconView, this.errorIconTintList, this.errorIconTintMode);
        }
        createIconView.setContentDescription(getResources().getText(R.string.error_icon_content_description));
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api16Impl.setImportantForAccessibility(createIconView, 2);
        createIconView.setClickable(false);
        createIconView.pressable = false;
        createIconView.setFocusable(false);
        if (!tintTypedArray.hasValue(48)) {
            if (tintTypedArray.hasValue(28)) {
                this.endIconTintList = MaterialResources.getColorStateList(getContext(), tintTypedArray, 28);
            }
            if (tintTypedArray.hasValue(29)) {
                this.endIconTintMode = ViewUtils.parseTintMode(tintTypedArray.getInt(29, -1), null);
            }
        }
        if (tintTypedArray.hasValue(27)) {
            setEndIconMode(tintTypedArray.getInt(27, 0));
            if (tintTypedArray.hasValue(25) && createIconView2.getContentDescription() != (text = tintTypedArray.getText(25))) {
                createIconView2.setContentDescription(text);
            }
            boolean z = tintTypedArray.getBoolean(24, true);
            if (createIconView2.checkable != z) {
                createIconView2.checkable = z;
                createIconView2.sendAccessibilityEvent(0);
            }
        } else if (tintTypedArray.hasValue(48)) {
            if (tintTypedArray.hasValue(49)) {
                this.endIconTintList = MaterialResources.getColorStateList(getContext(), tintTypedArray, 49);
            }
            if (tintTypedArray.hasValue(50)) {
                this.endIconTintMode = ViewUtils.parseTintMode(tintTypedArray.getInt(50, -1), null);
            }
            setEndIconMode(tintTypedArray.getBoolean(48, false) ? 1 : 0);
            CharSequence text2 = tintTypedArray.getText(46);
            if (createIconView2.getContentDescription() != text2) {
                createIconView2.setContentDescription(text2);
            }
        }
        appCompatTextView.setVisibility(8);
        appCompatTextView.setId(R.id.textinput_suffix_text);
        appCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 80.0f));
        ViewCompat.Api19Impl.setAccessibilityLiveRegion(appCompatTextView, 1);
        appCompatTextView.setTextAppearance(tintTypedArray.getResourceId(65, 0));
        if (tintTypedArray.hasValue(66)) {
            appCompatTextView.setTextColor(tintTypedArray.getColorStateList(66));
        }
        CharSequence text3 = tintTypedArray.getText(64);
        this.suffixText = TextUtils.isEmpty(text3) ? null : text3;
        appCompatTextView.setText(text3);
        updateSuffixTextVisibility();
        frameLayout.addView(createIconView2);
        addView(appCompatTextView);
        addView(frameLayout);
        addView(createIconView);
        textInputLayout.editTextAttachedListeners.add(anonymousClass2);
        if (textInputLayout.editText != null) {
            anonymousClass2.onEditTextAttached(textInputLayout);
        }
        addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.google.android.material.textfield.EndCompoundLayout.3
            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewAttachedToWindow(View view) {
                EndCompoundLayout endCompoundLayout = EndCompoundLayout.this;
                int i = EndCompoundLayout.$r8$clinit;
                endCompoundLayout.addTouchExplorationStateChangeListenerIfNeeded();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewDetachedFromWindow(View view) {
                AccessibilityManager accessibilityManager;
                EndCompoundLayout endCompoundLayout = EndCompoundLayout.this;
                int i = EndCompoundLayout.$r8$clinit;
                AccessibilityManagerCompat$TouchExplorationStateChangeListener accessibilityManagerCompat$TouchExplorationStateChangeListener = endCompoundLayout.touchExplorationStateChangeListener;
                if (accessibilityManagerCompat$TouchExplorationStateChangeListener != null && (accessibilityManager = endCompoundLayout.accessibilityManager) != null) {
                    accessibilityManager.removeTouchExplorationStateChangeListener(new AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper(accessibilityManagerCompat$TouchExplorationStateChangeListener));
                }
            }
        });
    }

    public final void addTouchExplorationStateChangeListenerIfNeeded() {
        if (this.touchExplorationStateChangeListener != null && this.accessibilityManager != null) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            if (ViewCompat.Api19Impl.isAttachedToWindow(this)) {
                this.accessibilityManager.addTouchExplorationStateChangeListener(new AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper(this.touchExplorationStateChangeListener));
            }
        }
    }

    public final CheckableImageButton createIconView(ViewGroup viewGroup, LayoutInflater layoutInflater, int i) {
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflater.inflate(R.layout.design_text_input_end_icon, viewGroup, false);
        checkableImageButton.setId(i);
        if (MaterialResources.isFontScaleAtLeast1_3(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginStart(0);
        }
        return checkableImageButton;
    }

    public final EndIconDelegate getEndIconDelegate() {
        EndIconDelegate customEndIconDelegate;
        EndIconDelegates endIconDelegates = this.endIconDelegates;
        int i = this.endIconMode;
        SparseArray sparseArray = endIconDelegates.delegates;
        EndIconDelegate endIconDelegate = (EndIconDelegate) sparseArray.get(i);
        if (endIconDelegate == null) {
            EndCompoundLayout endCompoundLayout = endIconDelegates.endLayout;
            if (i != -1) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i == 3) {
                                customEndIconDelegate = new DropdownMenuEndIconDelegate(endCompoundLayout);
                            } else {
                                throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Invalid end icon mode: ", i));
                            }
                        } else {
                            customEndIconDelegate = new ClearTextEndIconDelegate(endCompoundLayout);
                        }
                    } else {
                        endIconDelegate = new PasswordToggleEndIconDelegate(endCompoundLayout, endIconDelegates.passwordIconDrawableId);
                        sparseArray.append(i, endIconDelegate);
                    }
                } else {
                    customEndIconDelegate = new NoEndIconDelegate(endCompoundLayout);
                }
            } else {
                customEndIconDelegate = new CustomEndIconDelegate(endCompoundLayout);
            }
            endIconDelegate = customEndIconDelegate;
            sparseArray.append(i, endIconDelegate);
        }
        return endIconDelegate;
    }

    public final boolean isEndIconVisible() {
        if (this.endIconFrame.getVisibility() == 0 && this.endIconView.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    public final boolean isErrorIconVisible() {
        if (this.errorIconView.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    public final void refreshIconState(boolean z) {
        boolean z2;
        boolean isActivated;
        boolean isChecked;
        EndIconDelegate endIconDelegate = getEndIconDelegate();
        boolean z3 = true;
        if (endIconDelegate.isIconCheckable() && (isChecked = this.endIconView.isChecked()) != endIconDelegate.isIconChecked()) {
            this.endIconView.setChecked(!isChecked);
            z2 = true;
        } else {
            z2 = false;
        }
        if ((endIconDelegate instanceof DropdownMenuEndIconDelegate) && (isActivated = this.endIconView.isActivated()) != endIconDelegate.isIconActivated()) {
            this.endIconView.setActivated(!isActivated);
        } else {
            z3 = z2;
        }
        if (z || z3) {
            IconHelper.refreshIconDrawableState(this.textInputLayout, this.endIconView, this.endIconTintList);
        }
    }

    public final void setEndIconMode(int i) {
        boolean z;
        Drawable drawable;
        AccessibilityManager accessibilityManager;
        if (this.endIconMode == i) {
            return;
        }
        EndIconDelegate endIconDelegate = getEndIconDelegate();
        AccessibilityManagerCompat$TouchExplorationStateChangeListener accessibilityManagerCompat$TouchExplorationStateChangeListener = this.touchExplorationStateChangeListener;
        if (accessibilityManagerCompat$TouchExplorationStateChangeListener != null && (accessibilityManager = this.accessibilityManager) != null) {
            accessibilityManager.removeTouchExplorationStateChangeListener(new AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper(accessibilityManagerCompat$TouchExplorationStateChangeListener));
        }
        CharSequence charSequence = null;
        this.touchExplorationStateChangeListener = null;
        endIconDelegate.tearDown();
        this.endIconMode = i;
        Iterator it = this.endIconChangedListeners.iterator();
        if (!it.hasNext()) {
            if (i != 0) {
                z = true;
            } else {
                z = false;
            }
            setEndIconVisible(z);
            EndIconDelegate endIconDelegate2 = getEndIconDelegate();
            int i2 = this.endIconDelegates.customEndIconDrawableId;
            if (i2 == 0) {
                i2 = endIconDelegate2.getIconDrawableResId();
            }
            if (i2 != 0) {
                drawable = AppCompatResources.getDrawable(i2, getContext());
            } else {
                drawable = null;
            }
            this.endIconView.setImageDrawable(drawable);
            if (drawable != null) {
                IconHelper.applyIconTint(this.textInputLayout, this.endIconView, this.endIconTintList, this.endIconTintMode);
                IconHelper.refreshIconDrawableState(this.textInputLayout, this.endIconView, this.endIconTintList);
            }
            int iconContentDescriptionResId = endIconDelegate2.getIconContentDescriptionResId();
            if (iconContentDescriptionResId != 0) {
                charSequence = getResources().getText(iconContentDescriptionResId);
            }
            if (this.endIconView.getContentDescription() != charSequence) {
                this.endIconView.setContentDescription(charSequence);
            }
            boolean isIconCheckable = endIconDelegate2.isIconCheckable();
            CheckableImageButton checkableImageButton = this.endIconView;
            if (checkableImageButton.checkable != isIconCheckable) {
                checkableImageButton.checkable = isIconCheckable;
                checkableImageButton.sendAccessibilityEvent(0);
            }
            if (endIconDelegate2.isBoxBackgroundModeSupported(this.textInputLayout.boxBackgroundMode)) {
                endIconDelegate2.setUp();
                this.touchExplorationStateChangeListener = endIconDelegate2.getTouchExplorationStateChangeListener();
                addTouchExplorationStateChangeListenerIfNeeded();
                View.OnClickListener onIconClickListener = endIconDelegate2.getOnIconClickListener();
                CheckableImageButton checkableImageButton2 = this.endIconView;
                View.OnLongClickListener onLongClickListener = this.endIconOnLongClickListener;
                checkableImageButton2.setOnClickListener(onIconClickListener);
                IconHelper.setIconClickable(checkableImageButton2, onLongClickListener);
                EditText editText = this.editText;
                if (editText != null) {
                    endIconDelegate2.onEditTextAttached(editText);
                    setOnFocusChangeListenersIfNeeded(endIconDelegate2);
                }
                IconHelper.applyIconTint(this.textInputLayout, this.endIconView, this.endIconTintList, this.endIconTintMode);
                refreshIconState(true);
                return;
            }
            throw new IllegalStateException("The current box background mode " + this.textInputLayout.boxBackgroundMode + " is not supported by the end icon mode " + i);
        }
        ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(it.next());
        throw null;
    }

    public final void setEndIconVisible(boolean z) {
        int i;
        if (isEndIconVisible() != z) {
            CheckableImageButton checkableImageButton = this.endIconView;
            if (z) {
                i = 0;
            } else {
                i = 8;
            }
            checkableImageButton.setVisibility(i);
            updateEndLayoutVisibility();
            updateSuffixTextViewPadding();
            this.textInputLayout.updateDummyDrawables();
        }
    }

    public final void setOnFocusChangeListenersIfNeeded(EndIconDelegate endIconDelegate) {
        if (this.editText == null) {
            return;
        }
        if (endIconDelegate.getOnEditTextFocusChangeListener() != null) {
            this.editText.setOnFocusChangeListener(endIconDelegate.getOnEditTextFocusChangeListener());
        }
        if (endIconDelegate.getOnIconViewFocusChangeListener() != null) {
            this.endIconView.setOnFocusChangeListener(endIconDelegate.getOnIconViewFocusChangeListener());
        }
    }

    public final void updateEndLayoutVisibility() {
        int i;
        boolean z;
        boolean z2;
        FrameLayout frameLayout = this.endIconFrame;
        int i2 = 8;
        if (this.endIconView.getVisibility() == 0 && !isErrorIconVisible()) {
            i = 0;
        } else {
            i = 8;
        }
        frameLayout.setVisibility(i);
        if (this.suffixText != null && !this.hintExpanded) {
            z = false;
        } else {
            z = 8;
        }
        if (!isEndIconVisible() && !isErrorIconVisible() && z) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (z2) {
            i2 = 0;
        }
        setVisibility(i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateErrorIconVisibility() {
        /*
            r4 = this;
            com.google.android.material.internal.CheckableImageButton r0 = r4.errorIconView
            android.graphics.drawable.Drawable r0 = r0.getDrawable()
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L1a
            com.google.android.material.textfield.TextInputLayout r0 = r4.textInputLayout
            com.google.android.material.textfield.IndicatorViewController r3 = r0.indicatorViewController
            boolean r3 = r3.errorEnabled
            if (r3 == 0) goto L1a
            boolean r0 = r0.shouldShowError()
            if (r0 == 0) goto L1a
            r0 = r1
            goto L1b
        L1a:
            r0 = r2
        L1b:
            com.google.android.material.internal.CheckableImageButton r3 = r4.errorIconView
            if (r0 == 0) goto L21
            r0 = r2
            goto L23
        L21:
            r0 = 8
        L23:
            r3.setVisibility(r0)
            r4.updateEndLayoutVisibility()
            r4.updateSuffixTextViewPadding()
            int r0 = r4.endIconMode
            if (r0 == 0) goto L31
            goto L32
        L31:
            r1 = r2
        L32:
            if (r1 != 0) goto L39
            com.google.android.material.textfield.TextInputLayout r4 = r4.textInputLayout
            r4.updateDummyDrawables()
        L39:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.EndCompoundLayout.updateErrorIconVisibility():void");
    }

    public final void updateSuffixTextViewPadding() {
        int i;
        if (this.textInputLayout.editText == null) {
            return;
        }
        if (!isEndIconVisible() && !isErrorIconVisible()) {
            EditText editText = this.textInputLayout.editText;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            i = ViewCompat.Api17Impl.getPaddingEnd(editText);
        } else {
            i = 0;
        }
        AppCompatTextView appCompatTextView = this.suffixTextView;
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding);
        int paddingTop = this.textInputLayout.editText.getPaddingTop();
        int paddingBottom = this.textInputLayout.editText.getPaddingBottom();
        WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api17Impl.setPaddingRelative(appCompatTextView, dimensionPixelSize, paddingTop, i, paddingBottom);
    }

    public final void updateSuffixTextVisibility() {
        int i;
        int visibility = this.suffixTextView.getVisibility();
        boolean z = false;
        if (this.suffixText != null && !this.hintExpanded) {
            i = 0;
        } else {
            i = 8;
        }
        if (visibility != i) {
            EndIconDelegate endIconDelegate = getEndIconDelegate();
            if (i == 0) {
                z = true;
            }
            endIconDelegate.onSuffixVisibilityChanged(z);
        }
        updateEndLayoutVisibility();
        this.suffixTextView.setVisibility(i);
        this.textInputLayout.updateDummyDrawables();
    }
}
