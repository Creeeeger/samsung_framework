package androidx.picker.features.composable.left;

import android.view.View;
import android.widget.CheckBox;
import androidx.core.util.Supplier;
import androidx.picker.features.composable.ActionableComposableViewHolder;
import androidx.picker.helper.CompountButtonHelperKt;
import androidx.picker.loader.select.SelectableItem;
import androidx.picker.model.Selectable;
import androidx.picker.model.viewdata.ViewData;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.DisposableHandle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ComposableCheckBoxViewHolder extends ActionableComposableViewHolder {
    private final CheckBox checkBox;
    private DisposableHandle disposableHandle;

    public ComposableCheckBoxViewHolder(View view) {
        super(view);
        this.checkBox = (CheckBox) view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bindData$lambda-0, reason: not valid java name */
    public static final void m13bindData$lambda0(SelectableItem selectableItem, ComposableCheckBoxViewHolder composableCheckBoxViewHolder, View view) {
        selectableItem.setValue(Boolean.valueOf(composableCheckBoxViewHolder.checkBox.isChecked()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bindData$lambda-1, reason: not valid java name */
    public static final Boolean m14bindData$lambda1(SelectableItem selectableItem, ComposableCheckBoxViewHolder composableCheckBoxViewHolder) {
        selectableItem.setValue(Boolean.valueOf(!composableCheckBoxViewHolder.checkBox.isChecked()));
        return Boolean.TRUE;
    }

    @Override // androidx.picker.features.composable.ActionableComposableViewHolder, androidx.picker.features.composable.ComposableViewHolder
    public void bindData(ViewData viewData) {
        Selectable selectable;
        final SelectableItem selectableItem;
        if (viewData instanceof Selectable) {
            selectable = (Selectable) viewData;
        } else {
            selectable = null;
        }
        if (selectable != null && (selectableItem = selectable.getSelectableItem()) != null) {
            DisposableHandle disposableHandle = this.disposableHandle;
            if (disposableHandle != null) {
                disposableHandle.dispose();
            }
            this.disposableHandle = selectableItem.bind(new Function1() { // from class: androidx.picker.features.composable.left.ComposableCheckBoxViewHolder$bindData$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    CheckBox checkBox;
                    boolean booleanValue = ((Boolean) obj).booleanValue();
                    checkBox = ComposableCheckBoxViewHolder.this.checkBox;
                    checkBox.setChecked(booleanValue);
                    return Unit.INSTANCE;
                }
            });
            this.checkBox.setOnClickListener(new View.OnClickListener() { // from class: androidx.picker.features.composable.left.ComposableCheckBoxViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ComposableCheckBoxViewHolder.m13bindData$lambda0(SelectableItem.this, this, view);
                }
            });
            setDoAction(new Supplier() { // from class: androidx.picker.features.composable.left.ComposableCheckBoxViewHolder$$ExternalSyntheticLambda1
                @Override // androidx.core.util.Supplier
                public final Object get() {
                    Boolean m14bindData$lambda1;
                    m14bindData$lambda1 = ComposableCheckBoxViewHolder.m14bindData$lambda1(SelectableItem.this, this);
                    return m14bindData$lambda1;
                }
            });
        }
    }

    @Override // androidx.picker.features.composable.ActionableComposableViewHolder, androidx.picker.features.composable.ComposableViewHolder
    public void onBind(View view) {
        CompountButtonHelperKt.setAccessibilityFocusable(this.checkBox, view.hasOnClickListeners());
        super.onBind(view);
    }

    @Override // androidx.picker.features.composable.ActionableComposableViewHolder, androidx.picker.features.composable.ComposableViewHolder
    public void onViewRecycled(View view) {
        super.onViewRecycled(view);
        this.checkBox.setOnClickListener(null);
        DisposableHandle disposableHandle = this.disposableHandle;
        if (disposableHandle != null) {
            disposableHandle.dispose();
        }
    }
}
