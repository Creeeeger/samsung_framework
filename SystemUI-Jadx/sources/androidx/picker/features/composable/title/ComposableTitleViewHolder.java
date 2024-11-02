package androidx.picker.features.composable.title;

import android.content.Context;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.core.content.ContextCompat;
import androidx.picker.features.composable.ComposableViewHolder;
import androidx.picker.features.observable.ObservableProperty;
import androidx.picker.helper.ContextHelperKt;
import androidx.picker.helper.TextViewHelperKt;
import androidx.picker.loader.select.SelectableItem;
import androidx.picker.model.viewdata.AllAppsViewData;
import androidx.picker.model.viewdata.AppInfoViewData;
import androidx.picker.model.viewdata.CategoryViewData;
import androidx.picker.model.viewdata.ViewData;
import com.android.systemui.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.DisposableHandle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ComposableTitleViewHolder extends ComposableViewHolder {
    static final /* synthetic */ KProperty[] $$delegatedProperties;
    private int currentLayoutId;
    private DisposableHandle disposableHandle;
    private final TextView extraTitleView;
    private final Lazy highlightColor$delegate;
    private final Lazy subLabelDescriptionColor$delegate;
    private final Lazy subLabelValueColor$delegate;
    private final TextView summaryView;
    private final TextView titleView;

    static {
        PropertyReference0Impl propertyReference0Impl = new PropertyReference0Impl(ComposableTitleViewHolder.class, "highlightText", "<v#0>", 0);
        Reflection.factory.getClass();
        $$delegatedProperties = new KProperty[]{propertyReference0Impl};
    }

    public ComposableTitleViewHolder(final View view) {
        super(view);
        View findViewById = view.findViewById(R.id.title);
        Intrinsics.checkNotNull(findViewById);
        TextView textView = (TextView) findViewById;
        TextViewHelperKt.limitFontLarge(textView);
        this.titleView = textView;
        View findViewById2 = view.findViewById(R.id.summary);
        Intrinsics.checkNotNull(findViewById2);
        TextView textView2 = (TextView) findViewById2;
        TextViewHelperKt.limitFontLarge(textView2);
        this.summaryView = textView2;
        View findViewById3 = view.findViewById(R.id.extra_label);
        Intrinsics.checkNotNull(findViewById3);
        TextView textView3 = (TextView) findViewById3;
        TextViewHelperKt.limitFontLarge(textView3);
        this.extraTitleView = textView3;
        this.highlightColor$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: androidx.picker.features.composable.title.ComposableTitleViewHolder$highlightColor$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(ContextHelperKt.getPrimaryColor(view.getContext()));
            }
        });
        this.subLabelValueColor$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: androidx.picker.features.composable.title.ComposableTitleViewHolder$subLabelValueColor$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i;
                Context context = view.getContext();
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(R.attr.colorPrimaryDark, typedValue, true);
                int i2 = typedValue.resourceId;
                if (i2 != 0) {
                    Object obj = ContextCompat.sLock;
                    i = context.getColor(i2);
                } else {
                    i = typedValue.data;
                }
                return Integer.valueOf(i);
            }
        });
        this.subLabelDescriptionColor$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: androidx.picker.features.composable.title.ComposableTitleViewHolder$subLabelDescriptionColor$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i;
                Context context = view.getContext();
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.textColorSecondary, typedValue, true);
                int i2 = typedValue.resourceId;
                if (i2 != 0) {
                    Object obj = ContextCompat.sLock;
                    i = context.getColor(i2);
                } else {
                    i = typedValue.data;
                }
                return Integer.valueOf(i);
            }
        });
        this.currentLayoutId = R.layout.picker_app_composable_frame_title_single;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void adjustLayout(boolean z) {
        if (getFrameView() instanceof ConstraintLayout) {
            ConstraintSet constraintSet = new ConstraintSet();
            constraintSet.clone(this.currentLayoutId, ((ConstraintLayout) getFrameView()).getContext());
            constraintSet.applyTo((ConstraintLayout) getFrameView());
            getFrameView().getLayoutParams().height = getLayoutHeight(z);
        }
    }

    /* renamed from: bindData$lambda-4, reason: not valid java name */
    private static final String m18bindData$lambda4(ObservableProperty<String> observableProperty) {
        return observableProperty.getValue(null, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bindData$lambda-6, reason: not valid java name */
    public static final void m19bindData$lambda6(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((DisposableHandle) it.next()).dispose();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getHighlightColor() {
        return ((Number) this.highlightColor$delegate.getValue()).intValue();
    }

    private final int getLayoutHeight(boolean z) {
        if (z) {
            return getFrameView().getResources().getDimensionPixelOffset(R.dimen.picker_app_list_sub_label_height);
        }
        return getFrameView().getResources().getDimensionPixelOffset(R.dimen.picker_app_list_single_line_height);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getLayoutId(boolean z) {
        if (z) {
            return R.layout.picker_app_composable_frame_title_sublabel;
        }
        return R.layout.picker_app_composable_frame_title_single;
    }

    private final int getSubLabelDescriptionColor() {
        return ((Number) this.subLabelDescriptionColor$delegate.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getSubLabelShowState(ViewData viewData) {
        if (!(viewData instanceof AppInfoViewData)) {
            return false;
        }
        AppInfoViewData appInfoViewData = (AppInfoViewData) viewData;
        if (appInfoViewData.getItemType() == 5 && appInfoViewData.isValueInSubLabel() && !appInfoViewData.getSelected()) {
            return false;
        }
        return true;
    }

    private final int getSubLabelValueColor() {
        return ((Number) this.subLabelValueColor$delegate.getValue()).intValue();
    }

    @Override // androidx.picker.features.composable.ComposableViewHolder
    public void bindData(final ViewData viewData) {
        boolean z;
        int subLabelDescriptionColor;
        DisposableHandle registerAfterChangeUpdateListener;
        DisposableHandle disposableHandle = this.disposableHandle;
        if (disposableHandle != null) {
            disposableHandle.dispose();
        }
        final ArrayList arrayList = new ArrayList();
        boolean z2 = viewData instanceof AppInfoViewData;
        if (z2) {
            AppInfoViewData appInfoViewData = (AppInfoViewData) viewData;
            if (!TextUtils.isEmpty(appInfoViewData.getSubLabel()) && getSubLabelShowState(viewData)) {
                z = true;
            } else {
                z = false;
            }
            int layoutId = getLayoutId(z);
            if (this.currentLayoutId != layoutId) {
                this.currentLayoutId = layoutId;
                adjustLayout(z);
            }
            this.titleView.setText(appInfoViewData.getLabel());
            this.summaryView.setText(appInfoViewData.getSubLabel());
            this.extraTitleView.setText(appInfoViewData.getExtraLabel());
            TextView textView = this.summaryView;
            if (appInfoViewData.isValueInSubLabel()) {
                subLabelDescriptionColor = getSubLabelValueColor();
            } else {
                subLabelDescriptionColor = getSubLabelDescriptionColor();
            }
            textView.setTextColor(subLabelDescriptionColor);
            SelectableItem selectableItem = appInfoViewData.selectableItem;
            if (selectableItem != null && (registerAfterChangeUpdateListener = selectableItem.registerAfterChangeUpdateListener(new Function1() { // from class: androidx.picker.features.composable.title.ComposableTitleViewHolder$bindData$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                /* JADX WARN: Removed duplicated region for block: B:8:0x002e  */
                @Override // kotlin.jvm.functions.Function1
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object invoke(java.lang.Object r3) {
                    /*
                        r2 = this;
                        java.lang.Boolean r3 = (java.lang.Boolean) r3
                        r3.booleanValue()
                        androidx.picker.model.viewdata.ViewData r3 = androidx.picker.model.viewdata.ViewData.this
                        androidx.picker.model.viewdata.AppInfoViewData r3 = (androidx.picker.model.viewdata.AppInfoViewData) r3
                        java.lang.String r3 = r3.getSubLabel()
                        boolean r3 = android.text.TextUtils.isEmpty(r3)
                        if (r3 != 0) goto L1f
                        androidx.picker.features.composable.title.ComposableTitleViewHolder r3 = r2
                        androidx.picker.model.viewdata.ViewData r0 = androidx.picker.model.viewdata.ViewData.this
                        boolean r3 = androidx.picker.features.composable.title.ComposableTitleViewHolder.access$getSubLabelShowState(r3, r0)
                        if (r3 == 0) goto L1f
                        r3 = 1
                        goto L20
                    L1f:
                        r3 = 0
                    L20:
                        androidx.picker.features.composable.title.ComposableTitleViewHolder r0 = r2
                        int r0 = androidx.picker.features.composable.title.ComposableTitleViewHolder.access$getLayoutId(r0, r3)
                        androidx.picker.features.composable.title.ComposableTitleViewHolder r1 = r2
                        int r1 = androidx.picker.features.composable.title.ComposableTitleViewHolder.access$getCurrentLayoutId$p(r1)
                        if (r1 == r0) goto L38
                        androidx.picker.features.composable.title.ComposableTitleViewHolder r1 = r2
                        androidx.picker.features.composable.title.ComposableTitleViewHolder.access$setCurrentLayoutId$p(r1, r0)
                        androidx.picker.features.composable.title.ComposableTitleViewHolder r2 = r2
                        androidx.picker.features.composable.title.ComposableTitleViewHolder.access$adjustLayout(r2, r3)
                    L38:
                        kotlin.Unit r2 = kotlin.Unit.INSTANCE
                        return r2
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.picker.features.composable.title.ComposableTitleViewHolder$bindData$1.invoke(java.lang.Object):java.lang.Object");
                }
            })) != null) {
                arrayList.add(registerAfterChangeUpdateListener);
            }
        } else if (viewData instanceof CategoryViewData) {
            this.titleView.setText(((CategoryViewData) viewData).appData.label);
        } else if (viewData instanceof AllAppsViewData) {
            TextView textView2 = this.titleView;
            textView2.setText(textView2.getContext().getResources().getText(R.string.title_all_apps));
        }
        if (z2) {
            ObservableProperty observableProperty = ((AppInfoViewData) viewData).highlightText;
            TextViewHelperKt.setHighLightText(this.titleView, m18bindData$lambda4(observableProperty), getHighlightColor());
            DisposableHandle bind = observableProperty.bind(new Function1() { // from class: androidx.picker.features.composable.title.ComposableTitleViewHolder$bindData$3
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    TextView textView3;
                    int highlightColor;
                    textView3 = ComposableTitleViewHolder.this.titleView;
                    highlightColor = ComposableTitleViewHolder.this.getHighlightColor();
                    TextViewHelperKt.setHighLightText(textView3, (String) obj, highlightColor);
                    return Unit.INSTANCE;
                }
            });
            if (bind != null) {
                arrayList.add(bind);
            }
        }
        this.disposableHandle = new DisposableHandle() { // from class: androidx.picker.features.composable.title.ComposableTitleViewHolder$$ExternalSyntheticLambda0
            @Override // kotlinx.coroutines.DisposableHandle
            public final void dispose() {
                ComposableTitleViewHolder.m19bindData$lambda6(arrayList);
            }
        };
    }

    @Override // androidx.picker.features.composable.ComposableViewHolder
    public void onViewRecycled(View view) {
        super.onViewRecycled(view);
        DisposableHandle disposableHandle = this.disposableHandle;
        if (disposableHandle != null) {
            disposableHandle.dispose();
        }
    }
}
