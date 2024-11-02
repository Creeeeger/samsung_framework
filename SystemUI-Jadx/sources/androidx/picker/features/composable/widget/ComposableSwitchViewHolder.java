package androidx.picker.features.composable.widget;

import android.view.View;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.util.Supplier;
import androidx.picker.features.composable.ActionableComposableViewHolder;
import androidx.picker.helper.CompountButtonHelperKt;
import androidx.picker.loader.select.SelectableItem;
import androidx.picker.model.viewdata.AppInfoViewData;
import androidx.picker.model.viewdata.ViewData;
import com.android.systemui.R;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DisposableHandle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ComposableSwitchViewHolder extends ActionableComposableViewHolder {
    private DisposableHandle disposableHandle;
    private final View divider;
    private Boolean hasCustomClickListener;

    /* renamed from: switch, reason: not valid java name */
    private final SwitchCompat f1switch;

    public ComposableSwitchViewHolder(View view) {
        super(view);
        View findViewById = view.findViewById(R.id.switch_widget);
        Intrinsics.checkNotNull(findViewById);
        this.f1switch = (SwitchCompat) findViewById;
        View findViewById2 = view.findViewById(R.id.switch_divider_widget);
        Intrinsics.checkNotNull(findViewById2);
        this.divider = findViewById2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bindData$lambda-0, reason: not valid java name */
    public static final Boolean m31bindData$lambda0(SelectableItem selectableItem, ComposableSwitchViewHolder composableSwitchViewHolder) {
        selectableItem.setValue(Boolean.valueOf(!composableSwitchViewHolder.f1switch.isChecked()));
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bindData$lambda-1, reason: not valid java name */
    public static final void m32bindData$lambda1(SelectableItem selectableItem, ComposableSwitchViewHolder composableSwitchViewHolder, View view) {
        selectableItem.setValue(Boolean.valueOf(composableSwitchViewHolder.f1switch.isChecked()));
    }

    private final void setHasCustomClickListener(Boolean bool) {
        int i;
        this.hasCustomClickListener = bool;
        View view = this.divider;
        if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
            i = 0;
        } else {
            i = 8;
        }
        view.setVisibility(i);
    }

    @Override // androidx.picker.features.composable.ActionableComposableViewHolder, androidx.picker.features.composable.ComposableViewHolder
    public void bindData(ViewData viewData) {
        AppInfoViewData appInfoViewData;
        final SelectableItem selectableItem;
        if (viewData instanceof AppInfoViewData) {
            appInfoViewData = (AppInfoViewData) viewData;
        } else {
            appInfoViewData = null;
        }
        if (appInfoViewData == null || (selectableItem = appInfoViewData.selectableItem) == null) {
            return;
        }
        DisposableHandle disposableHandle = this.disposableHandle;
        if (disposableHandle != null) {
            disposableHandle.dispose();
        }
        this.disposableHandle = selectableItem.bind(new Function1() { // from class: androidx.picker.features.composable.widget.ComposableSwitchViewHolder$bindData$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SwitchCompat switchCompat;
                boolean booleanValue = ((Boolean) obj).booleanValue();
                switchCompat = ComposableSwitchViewHolder.this.f1switch;
                switchCompat.setChecked(booleanValue);
                return Unit.INSTANCE;
            }
        });
        setDoAction(new Supplier() { // from class: androidx.picker.features.composable.widget.ComposableSwitchViewHolder$$ExternalSyntheticLambda0
            @Override // androidx.core.util.Supplier
            public final Object get() {
                Boolean m31bindData$lambda0;
                m31bindData$lambda0 = ComposableSwitchViewHolder.m31bindData$lambda0(SelectableItem.this, this);
                return m31bindData$lambda0;
            }
        });
        this.f1switch.setOnClickListener(new View.OnClickListener() { // from class: androidx.picker.features.composable.widget.ComposableSwitchViewHolder$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ComposableSwitchViewHolder.m32bindData$lambda1(SelectableItem.this, this, view);
            }
        });
    }

    @Override // androidx.picker.features.composable.ActionableComposableViewHolder, androidx.picker.features.composable.ComposableViewHolder
    public void onBind(View view) {
        if (this.hasCustomClickListener == null) {
            setHasCustomClickListener(Boolean.valueOf(view.hasOnClickListeners()));
        }
        CompountButtonHelperKt.setAccessibilityFocusable(this.f1switch, Intrinsics.areEqual(this.hasCustomClickListener, Boolean.TRUE));
        super.onBind(view);
    }

    @Override // androidx.picker.features.composable.ActionableComposableViewHolder, androidx.picker.features.composable.ComposableViewHolder
    public void onViewRecycled(View view) {
        super.onViewRecycled(view);
        this.f1switch.setOnClickListener(null);
        DisposableHandle disposableHandle = this.disposableHandle;
        if (disposableHandle != null) {
            disposableHandle.dispose();
        }
        setHasCustomClickListener(null);
    }
}
