package androidx.preference;

import android.app.DialogFragment;
import android.app.Fragment;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.appcompat.util.SeslRoundedCorner;
import androidx.appcompat.util.SeslSubheaderRoundedCorner;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import androidx.preference.DialogPreference;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.R;
import com.android.systemui.tuner.TunerActivity;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class PreferenceFragment extends Fragment implements PreferenceManager.OnPreferenceTreeClickListener, PreferenceManager.OnDisplayPreferenceDialogListener, PreferenceManager.OnNavigateToScreenListener, DialogPreference.TargetFragment {
    public boolean mHavePrefs;
    public boolean mInitDone;
    public int mIsLargeLayout;
    public boolean mIsReducedMargin;
    public RecyclerView mList;
    public SeslRoundedCorner mListRoundedCorner;
    public ViewTreeObserver.OnPreDrawListener mOnPreDrawListener;
    public PreferenceManager mPreferenceManager;
    public SeslRoundedCorner mRoundedCorner;
    public int mScreenWidthDp;
    public Context mStyledContext;
    public int mSubheaderColor;
    public SeslSubheaderRoundedCorner mSubheaderRoundedCorner;
    public final DividerDecoration mDividerDecoration = new DividerDecoration();
    public int mLayoutResId = R.layout.preference_list_fragment;
    public final boolean mIsRoundedCorner = true;
    public final AnonymousClass1 mHandler = new Handler() { // from class: androidx.preference.PreferenceFragment.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what == 1) {
                PreferenceFragment preferenceFragment = PreferenceFragment.this;
                PreferenceScreen preferenceScreen = preferenceFragment.mPreferenceManager.mPreferenceScreen;
                if (preferenceScreen != null) {
                    preferenceFragment.mList.setAdapter(new PreferenceGroupAdapter(preferenceScreen));
                    preferenceScreen.onAttached();
                }
            }
        }
    };
    public final AnonymousClass2 mRequestFocus = new Runnable() { // from class: androidx.preference.PreferenceFragment.2
        @Override // java.lang.Runnable
        public final void run() {
            RecyclerView recyclerView = PreferenceFragment.this.mList;
            recyclerView.focusableViewAvailable(recyclerView);
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.preference.PreferenceFragment$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass4 implements ViewTreeObserver.OnPreDrawListener {
        public AnonymousClass4() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            int i;
            PreferenceFragment preferenceFragment = PreferenceFragment.this;
            RecyclerView recyclerView = preferenceFragment.mList;
            if (recyclerView != null) {
                RecyclerView.Adapter adapter = recyclerView.mAdapter;
                Configuration configuration = preferenceFragment.getResources().getConfiguration();
                int i2 = configuration.screenWidthDp;
                boolean z = true;
                if ((i2 <= 320 && configuration.fontScale >= 1.1f) || (i2 < 411 && configuration.fontScale >= 1.3f)) {
                    i = 1;
                } else {
                    i = 2;
                }
                if (adapter instanceof PreferenceGroupAdapter) {
                    PreferenceFragment preferenceFragment2 = PreferenceFragment.this;
                    PreferenceGroupAdapter preferenceGroupAdapter = (PreferenceGroupAdapter) adapter;
                    if (i == preferenceFragment2.mIsLargeLayout && (i != 1 || (preferenceFragment2.mScreenWidthDp == i2 && preferenceGroupAdapter.mParentWidth != 0))) {
                        z = false;
                    }
                    if (z) {
                        preferenceFragment2.mIsLargeLayout = i;
                        for (int i3 = 0; i3 < preferenceGroupAdapter.getItemCount(); i3++) {
                            Preference item = preferenceGroupAdapter.getItem(i3);
                            if (item != null && PreferenceGroupAdapter.isSwitchLayout(item) && ((item instanceof SwitchPreferenceCompat) || (item instanceof SwitchPreference))) {
                                adapter.notifyItemChanged(i3);
                            }
                        }
                    }
                }
                PreferenceFragment preferenceFragment3 = PreferenceFragment.this;
                preferenceFragment3.mScreenWidthDp = configuration.screenWidthDp;
                preferenceFragment3.mList.getViewTreeObserver().removeOnPreDrawListener(this);
                PreferenceFragment.this.mOnPreDrawListener = null;
            }
            return false;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class DividerDecoration extends RecyclerView.ItemDecoration {
        public boolean mAllowDividerAfterLastItem = true;
        public Drawable mDivider;
        public int mDividerHeight;

        public DividerDecoration() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void seslOnDispatchDraw(Canvas canvas, RecyclerView recyclerView) {
            PreferenceFragment preferenceFragment;
            PreferenceViewHolder preferenceViewHolder;
            int i;
            boolean z;
            boolean z2;
            int childCount = recyclerView.getChildCount();
            int width = recyclerView.getWidth();
            int i2 = 0;
            while (true) {
                preferenceFragment = PreferenceFragment.this;
                if (i2 >= childCount) {
                    break;
                }
                View childAt = recyclerView.getChildAt(i2);
                RecyclerView.ViewHolder childViewHolder = recyclerView.getChildViewHolder(childAt);
                if (childViewHolder instanceof PreferenceViewHolder) {
                    preferenceViewHolder = (PreferenceViewHolder) childViewHolder;
                    i = preferenceViewHolder.mDividerStartOffset;
                } else {
                    preferenceViewHolder = null;
                    i = 0;
                }
                int height = childAt.getHeight() + ((int) childAt.getY());
                if (this.mDivider != null) {
                    RecyclerView.ViewHolder childViewHolder2 = recyclerView.getChildViewHolder(childAt);
                    boolean z3 = true;
                    if ((childViewHolder2 instanceof PreferenceViewHolder) && ((PreferenceViewHolder) childViewHolder2).mDividerAllowedBelow) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!z) {
                        z2 = false;
                    } else {
                        z2 = this.mAllowDividerAfterLastItem;
                        int indexOfChild = recyclerView.indexOfChild(childAt);
                        if (indexOfChild < recyclerView.getChildCount() - 1) {
                            RecyclerView.ViewHolder childViewHolder3 = recyclerView.getChildViewHolder(recyclerView.getChildAt(indexOfChild + 1));
                            if (!(childViewHolder3 instanceof PreferenceViewHolder) || !((PreferenceViewHolder) childViewHolder3).mDividerAllowedAbove) {
                                z3 = false;
                            }
                            z2 = z3;
                        }
                    }
                    if (z2) {
                        this.mDivider.setBounds(i, height, width, this.mDividerHeight + height);
                        this.mDivider.draw(canvas);
                    }
                }
                if (preferenceFragment.mIsRoundedCorner && preferenceViewHolder != null && preferenceViewHolder.mDrawBackground) {
                    if (preferenceViewHolder.mSubheaderRound) {
                        preferenceFragment.mSubheaderRoundedCorner.setRoundedCorners(preferenceViewHolder.mDrawCorners);
                        preferenceFragment.mSubheaderRoundedCorner.drawRoundedCorner(childAt, canvas);
                    } else {
                        preferenceFragment.mRoundedCorner.setRoundedCorners(preferenceViewHolder.mDrawCorners);
                        preferenceFragment.mRoundedCorner.drawRoundedCorner(childAt, canvas);
                    }
                }
                i2++;
            }
            if (preferenceFragment.mIsRoundedCorner) {
                SeslRoundedCorner seslRoundedCorner = preferenceFragment.mListRoundedCorner;
                canvas.getClipBounds(seslRoundedCorner.mRoundedCornerBounds);
                seslRoundedCorner.drawRoundedCornerInternal(canvas);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface OnPreferenceStartFragmentCallback {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface OnPreferenceStartScreenCallback {
    }

    public final void addPreferencesFromResource(int i) {
        PreferenceManager preferenceManager = this.mPreferenceManager;
        if (preferenceManager != null) {
            setPreferenceScreen(preferenceManager.inflateFromResource(this.mStyledContext, i, preferenceManager.mPreferenceScreen));
            return;
        }
        throw new RuntimeException("This should be called after super.onCreate.");
    }

    @Override // androidx.preference.DialogPreference.TargetFragment
    public final Preference findPreference(CharSequence charSequence) {
        PreferenceScreen preferenceScreen;
        PreferenceManager preferenceManager = this.mPreferenceManager;
        if (preferenceManager == null || (preferenceScreen = preferenceManager.mPreferenceScreen) == null) {
            return null;
        }
        return preferenceScreen.findPreference(charSequence);
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        boolean z;
        RecyclerView recyclerView = this.mList;
        if (recyclerView != null) {
            if (this.mOnPreDrawListener == null) {
                ViewTreeObserver viewTreeObserver = recyclerView.getViewTreeObserver();
                if (this.mList != null) {
                    this.mOnPreDrawListener = new AnonymousClass4();
                }
                viewTreeObserver.addOnPreDrawListener(this.mOnPreDrawListener);
            }
            RecyclerView.Adapter adapter = this.mList.mAdapter;
            if (configuration.screenWidthDp <= 250) {
                z = true;
            } else {
                z = false;
            }
            if (z != this.mIsReducedMargin && (adapter instanceof PreferenceGroupAdapter)) {
                this.mIsReducedMargin = z;
                TypedArray typedArray = null;
                try {
                    Context context = this.mStyledContext;
                    typedArray = context.obtainStyledAttributes(null, R$styleable.PreferenceFragment, TypedArrayUtils.getAttr(R.attr.preferenceFragmentStyle, context, android.R.attr.preferenceFragmentStyle), 0);
                    Drawable drawable = typedArray.getDrawable(1);
                    DividerDecoration dividerDecoration = this.mDividerDecoration;
                    if (drawable != null) {
                        dividerDecoration.getClass();
                        dividerDecoration.mDividerHeight = drawable.getIntrinsicHeight();
                    } else {
                        dividerDecoration.mDividerHeight = 0;
                    }
                    dividerDecoration.mDivider = drawable;
                    PreferenceFragment.this.mList.invalidateItemDecorations();
                    RecyclerView recyclerView2 = this.mList;
                    recyclerView2.setAdapter(recyclerView2.mAdapter);
                    RecyclerView.LayoutManager layoutManager$1 = this.mList.getLayoutManager$1();
                    if (layoutManager$1 != null) {
                        layoutManager$1.onRestoreInstanceState(layoutManager$1.onSaveInstanceState());
                    }
                    typedArray.recycle();
                } catch (Throwable th) {
                    if (typedArray != null) {
                        typedArray.recycle();
                    }
                    throw th;
                }
            }
        }
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        int i;
        String str;
        super.onCreate(bundle);
        TypedValue typedValue = new TypedValue();
        boolean z = true;
        getActivity().getTheme().resolveAttribute(R.attr.preferenceTheme, typedValue, true);
        Configuration configuration = getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        if ((i2 <= 320 && configuration.fontScale >= 1.1f) || (i2 < 411 && configuration.fontScale >= 1.3f)) {
            i = 1;
        } else {
            i = 2;
        }
        this.mIsLargeLayout = i;
        this.mScreenWidthDp = i2;
        if (i2 > 250) {
            z = false;
        }
        this.mIsReducedMargin = z;
        int i3 = typedValue.resourceId;
        if (i3 == 0) {
            i3 = R.style.PreferenceThemeOverlay;
        }
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getActivity(), i3);
        this.mStyledContext = contextThemeWrapper;
        PreferenceManager preferenceManager = new PreferenceManager(contextThemeWrapper);
        this.mPreferenceManager = preferenceManager;
        preferenceManager.mOnNavigateToScreenListener = this;
        if (getArguments() != null) {
            str = getArguments().getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT");
        } else {
            str = null;
        }
        onCreatePreferences(str);
    }

    public abstract void onCreatePreferences(String str);

    @Override // android.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RecyclerView recyclerView;
        Context context = this.mStyledContext;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, R$styleable.PreferenceFragment, TypedArrayUtils.getAttr(R.attr.preferenceFragmentStyle, context, android.R.attr.preferenceFragmentStyle), 0);
        this.mLayoutResId = obtainStyledAttributes.getResourceId(0, this.mLayoutResId);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(2, -1);
        boolean z = obtainStyledAttributes.getBoolean(3, true);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = this.mStyledContext.obtainStyledAttributes(null, androidx.appcompat.R$styleable.View, android.R.attr.listSeparatorTextViewStyle, 0);
        Drawable drawable2 = obtainStyledAttributes2.getDrawable(1);
        if (drawable2 instanceof ColorDrawable) {
            this.mSubheaderColor = ((ColorDrawable) drawable2).getColor();
        }
        Log.d("SeslPreferenceFragment", " sub header color = " + this.mSubheaderColor);
        obtainStyledAttributes2.recycle();
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(this.mStyledContext);
        View inflate = cloneInContext.inflate(this.mLayoutResId, viewGroup, false);
        View findViewById = inflate.findViewById(android.R.id.list_container);
        if (findViewById instanceof ViewGroup) {
            ViewGroup viewGroup2 = (ViewGroup) findViewById;
            if (!this.mStyledContext.getPackageManager().hasSystemFeature("android.hardware.type.automotive") || (recyclerView = (RecyclerView) viewGroup2.findViewById(R.id.recycler_view)) == null) {
                recyclerView = (RecyclerView) cloneInContext.inflate(R.layout.sesl_preference_recyclerview, viewGroup2, false);
                recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
                PreferenceRecyclerViewAccessibilityDelegate preferenceRecyclerViewAccessibilityDelegate = new PreferenceRecyclerViewAccessibilityDelegate(recyclerView);
                recyclerView.mAccessibilityDelegate = preferenceRecyclerViewAccessibilityDelegate;
                ViewCompat.setAccessibilityDelegate(recyclerView, preferenceRecyclerViewAccessibilityDelegate);
            }
            this.mList = recyclerView;
            if (this.mOnPreDrawListener == null) {
                ViewTreeObserver viewTreeObserver = recyclerView.getViewTreeObserver();
                if (this.mList != null) {
                    this.mOnPreDrawListener = new AnonymousClass4();
                }
                viewTreeObserver.addOnPreDrawListener(this.mOnPreDrawListener);
            }
            this.mList.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.preference.PreferenceFragment.3
                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewDetachedFromWindow(View view) {
                    view.getViewTreeObserver().removeOnPreDrawListener(PreferenceFragment.this.mOnPreDrawListener);
                    view.removeOnAttachStateChangeListener(this);
                    PreferenceFragment.this.mOnPreDrawListener = null;
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewAttachedToWindow(View view) {
                }
            });
            recyclerView.addItemDecoration(this.mDividerDecoration);
            DividerDecoration dividerDecoration = this.mDividerDecoration;
            if (drawable != null) {
                dividerDecoration.getClass();
                dividerDecoration.mDividerHeight = drawable.getIntrinsicHeight();
            } else {
                dividerDecoration.mDividerHeight = 0;
            }
            dividerDecoration.mDivider = drawable;
            PreferenceFragment.this.mList.invalidateItemDecorations();
            if (dimensionPixelSize != -1) {
                DividerDecoration dividerDecoration2 = this.mDividerDecoration;
                dividerDecoration2.mDividerHeight = dimensionPixelSize;
                PreferenceFragment.this.mList.invalidateItemDecorations();
            }
            this.mDividerDecoration.mAllowDividerAfterLastItem = z;
            this.mList.setItemAnimator(null);
            this.mRoundedCorner = new SeslRoundedCorner(this.mStyledContext);
            this.mSubheaderRoundedCorner = new SeslSubheaderRoundedCorner(this.mStyledContext);
            if (this.mIsRoundedCorner) {
                recyclerView.seslSetFillBottomEnabled(true);
                int i = this.mSubheaderColor;
                recyclerView.mRectPaint.setColor(i);
                recyclerView.mRoundedCorner.setRoundedCornerColor(12, i);
                SeslRoundedCorner seslRoundedCorner = new SeslRoundedCorner(this.mStyledContext, true);
                this.mListRoundedCorner = seslRoundedCorner;
                seslRoundedCorner.setRoundedCorners(3);
            }
            if (this.mList.getParent() == null) {
                viewGroup2.addView(this.mList);
            }
            post(this.mRequestFocus);
            return inflate;
        }
        throw new RuntimeException("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
    }

    @Override // android.app.Fragment
    public final void onDestroyView() {
        RecyclerView recyclerView;
        PreferenceScreen preferenceScreen;
        removeCallbacks(this.mRequestFocus);
        removeMessages(1);
        if (this.mHavePrefs && (preferenceScreen = this.mPreferenceManager.mPreferenceScreen) != null) {
            preferenceScreen.onDetached();
        }
        if (this.mOnPreDrawListener != null && (recyclerView = this.mList) != null) {
            recyclerView.getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
        }
        this.mList = null;
        super.onDestroyView();
    }

    @Override // androidx.preference.PreferenceManager.OnDisplayPreferenceDialogListener
    public void onDisplayPreferenceDialog(Preference preference) {
        DialogFragment multiSelectListPreferenceDialogFragment;
        getActivity();
        if (getFragmentManager().findFragmentByTag("androidx.preference.PreferenceFragment.DIALOG") != null) {
            return;
        }
        if (preference instanceof EditTextPreference) {
            String str = preference.mKey;
            multiSelectListPreferenceDialogFragment = new EditTextPreferenceDialogFragment();
            Bundle bundle = new Bundle(1);
            bundle.putString("key", str);
            multiSelectListPreferenceDialogFragment.setArguments(bundle);
        } else if (preference instanceof ListPreference) {
            String str2 = preference.mKey;
            multiSelectListPreferenceDialogFragment = new ListPreferenceDialogFragment();
            Bundle bundle2 = new Bundle(1);
            bundle2.putString("key", str2);
            multiSelectListPreferenceDialogFragment.setArguments(bundle2);
        } else if (preference instanceof MultiSelectListPreference) {
            String str3 = preference.mKey;
            multiSelectListPreferenceDialogFragment = new MultiSelectListPreferenceDialogFragment();
            Bundle bundle3 = new Bundle(1);
            bundle3.putString("key", str3);
            multiSelectListPreferenceDialogFragment.setArguments(bundle3);
        } else {
            throw new IllegalArgumentException("Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?");
        }
        multiSelectListPreferenceDialogFragment.setTargetFragment(this, 0);
        multiSelectListPreferenceDialogFragment.show(getFragmentManager(), "androidx.preference.PreferenceFragment.DIALOG");
    }

    @Override // androidx.preference.PreferenceManager.OnNavigateToScreenListener
    public final void onNavigateToScreen(PreferenceScreen preferenceScreen) {
        if (getActivity() instanceof OnPreferenceStartScreenCallback) {
            FragmentTransaction beginTransaction = ((TunerActivity) ((OnPreferenceStartScreenCallback) getActivity())).getFragmentManager().beginTransaction();
            TunerActivity.SubSettingsFragment subSettingsFragment = new TunerActivity.SubSettingsFragment();
            Bundle bundle = new Bundle(1);
            bundle.putString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT", preferenceScreen.mKey);
            subSettingsFragment.setArguments(bundle);
            subSettingsFragment.setTargetFragment(this, 0);
            beginTransaction.replace(R.id.content_frame, subSettingsFragment);
            beginTransaction.addToBackStack("PreferenceFragment");
            beginTransaction.commit();
        }
    }

    @Override // androidx.preference.PreferenceManager.OnPreferenceTreeClickListener
    public boolean onPreferenceTreeClick(Preference preference) {
        if (preference.mFragment == null || !(getActivity() instanceof OnPreferenceStartFragmentCallback)) {
            return false;
        }
        TunerActivity tunerActivity = (TunerActivity) ((OnPreferenceStartFragmentCallback) getActivity());
        tunerActivity.getClass();
        try {
            Fragment fragment = (Fragment) Class.forName(preference.mFragment).newInstance();
            Bundle bundle = new Bundle(1);
            bundle.putString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT", preference.mKey);
            fragment.setArguments(bundle);
            FragmentTransaction beginTransaction = tunerActivity.getFragmentManager().beginTransaction();
            tunerActivity.setTitle(preference.getTitle());
            beginTransaction.replace(R.id.content_frame, fragment);
            beginTransaction.addToBackStack("PreferenceFragment");
            beginTransaction.commit();
            return true;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            Log.d("TunerActivity", "Problem launching fragment", e);
            return false;
        }
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        PreferenceScreen preferenceScreen = this.mPreferenceManager.mPreferenceScreen;
        if (preferenceScreen != null) {
            Bundle bundle2 = new Bundle();
            preferenceScreen.dispatchSaveInstanceState(bundle2);
            bundle.putBundle("android:preferences", bundle2);
        }
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        PreferenceManager preferenceManager = this.mPreferenceManager;
        preferenceManager.mOnPreferenceTreeClickListener = this;
        preferenceManager.mOnDisplayPreferenceDialogListener = this;
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        PreferenceManager preferenceManager = this.mPreferenceManager;
        preferenceManager.mOnPreferenceTreeClickListener = null;
        preferenceManager.mOnDisplayPreferenceDialogListener = null;
    }

    @Override // android.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        PreferenceScreen preferenceScreen;
        Bundle bundle2;
        PreferenceScreen preferenceScreen2;
        super.onViewCreated(view, bundle);
        if (bundle != null && (bundle2 = bundle.getBundle("android:preferences")) != null && (preferenceScreen2 = this.mPreferenceManager.mPreferenceScreen) != null) {
            preferenceScreen2.dispatchRestoreInstanceState(bundle2);
        }
        if (this.mHavePrefs && (preferenceScreen = this.mPreferenceManager.mPreferenceScreen) != null) {
            this.mList.setAdapter(new PreferenceGroupAdapter(preferenceScreen));
            preferenceScreen.onAttached();
        }
        this.mInitDone = true;
    }

    public final void setPreferenceScreen(PreferenceScreen preferenceScreen) {
        boolean z;
        PreferenceManager preferenceManager = this.mPreferenceManager;
        PreferenceScreen preferenceScreen2 = preferenceManager.mPreferenceScreen;
        if (preferenceScreen != preferenceScreen2) {
            if (preferenceScreen2 != null) {
                preferenceScreen2.onDetached();
            }
            preferenceManager.mPreferenceScreen = preferenceScreen;
            z = true;
        } else {
            z = false;
        }
        if (z) {
            this.mHavePrefs = true;
            if (this.mInitDone && !hasMessages(1)) {
                obtainMessage(1).sendToTarget();
            }
        }
    }
}
