package androidx.picker.adapter.viewholder;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt$children$1;
import androidx.core.view.ViewGroupKt$iterator$1;
import androidx.picker.adapter.AbsAdapter;
import androidx.picker.model.viewdata.AppInfoViewData;
import androidx.picker.model.viewdata.ViewData;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Iterator;
import java.util.LinkedList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.DisposableHandle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class PickerViewHolder extends RecyclerView.ViewHolder {
    public DisposableHandle disposable;
    public final View item;

    public PickerViewHolder(View view) {
        super(view);
        this.item = this.itemView;
    }

    public void bindData(ViewData viewData) {
        if (viewData instanceof AppInfoViewData) {
            this.disposable = ((AppInfoViewData) viewData).dimmedItem.bind(new Function1() { // from class: androidx.picker.adapter.viewholder.PickerViewHolder$bindData$1$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    PickerViewHolder.this.setViewEnableState(!((Boolean) obj).booleanValue());
                    return Unit.INSTANCE;
                }
            });
        }
    }

    public void onViewRecycled() {
        View view = this.itemView;
        if (view.hasOnClickListeners()) {
            view.setOnClickListener(null);
        }
        DisposableHandle disposableHandle = this.disposable;
        if (disposableHandle != null) {
            disposableHandle.dispose();
        }
    }

    public void setViewEnableState(boolean z) {
        View view;
        LinkedList linkedList = new LinkedList();
        linkedList.add(this.itemView);
        while ((!linkedList.isEmpty()) && (view = (View) linkedList.poll()) != null) {
            view.setEnabled(z);
            if (view instanceof ViewGroup) {
                Iterator it = new ViewGroupKt$children$1((ViewGroup) view).iterator();
                while (true) {
                    ViewGroupKt$iterator$1 viewGroupKt$iterator$1 = (ViewGroupKt$iterator$1) it;
                    if (viewGroupKt$iterator$1.hasNext()) {
                        linkedList.add((View) viewGroupKt$iterator$1.next());
                    }
                }
            }
        }
    }

    public void bindAdapter(AbsAdapter absAdapter) {
    }
}
