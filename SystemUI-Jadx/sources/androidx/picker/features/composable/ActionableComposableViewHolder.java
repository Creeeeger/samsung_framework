package androidx.picker.features.composable;

import android.view.View;
import androidx.core.util.Supplier;
import androidx.picker.model.viewdata.ViewData;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class ActionableComposableViewHolder extends ComposableViewHolder {
    private Supplier doAction;

    public ActionableComposableViewHolder(View view) {
        super(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onBind$lambda-0, reason: not valid java name */
    public static final void m12onBind$lambda0(ActionableComposableViewHolder actionableComposableViewHolder, View view) {
        Supplier doAction = actionableComposableViewHolder.getDoAction();
        if (doAction != null) {
        }
    }

    @Override // androidx.picker.features.composable.ComposableViewHolder
    public abstract void bindData(ViewData viewData);

    public Supplier getDoAction() {
        return this.doAction;
    }

    @Override // androidx.picker.features.composable.ComposableViewHolder
    public void onBind(View view) {
        super.onBind(view);
        if (getDoAction() != null && !view.hasOnClickListeners()) {
            view.setOnClickListener(new View.OnClickListener() { // from class: androidx.picker.features.composable.ActionableComposableViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ActionableComposableViewHolder.m12onBind$lambda0(ActionableComposableViewHolder.this, view2);
                }
            });
        }
    }

    @Override // androidx.picker.features.composable.ComposableViewHolder
    public void onViewRecycled(View view) {
        super.onViewRecycled(view);
        if (getDoAction() != null) {
            view.setOnClickListener(null);
        }
        setDoAction(null);
    }

    public void setDoAction(Supplier supplier) {
        this.doAction = supplier;
    }
}
