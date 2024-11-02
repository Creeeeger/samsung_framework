package androidx.picker.features.composable;

import android.view.View;
import androidx.picker.adapter.AbsAdapter;
import androidx.picker.model.viewdata.ViewData;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class ComposableViewHolder {
    private final View frameView;

    public ComposableViewHolder(View view) {
        this.frameView = view;
    }

    public abstract void bindData(ViewData viewData);

    public final View getFrameView() {
        return this.frameView;
    }

    public void bindAdapter(AbsAdapter absAdapter) {
    }

    public void onBind(View view) {
    }

    public void onViewRecycled(View view) {
    }
}
