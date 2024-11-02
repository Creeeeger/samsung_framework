package com.android.systemui.controls.management.adapter;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.controls.management.model.CustomElementWrapper;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class CustomHolder extends RecyclerView.ViewHolder {
    public /* synthetic */ CustomHolder(View view, DefaultConstructorMarker defaultConstructorMarker) {
        this(view);
    }

    public abstract void bindData(CustomElementWrapper customElementWrapper);

    private CustomHolder(View view) {
        super(view);
    }

    public void updateFavorite(boolean z) {
    }
}
