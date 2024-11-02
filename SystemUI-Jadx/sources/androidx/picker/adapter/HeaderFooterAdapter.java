package androidx.picker.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import androidx.picker.adapter.viewholder.FrameViewHolder;
import androidx.picker.adapter.viewholder.PickerViewHolder;
import androidx.picker.model.viewdata.HeaderFooterViewData;
import androidx.picker.model.viewdata.ViewData;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.R;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.RangesKt___RangesKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class HeaderFooterAdapter extends RecyclerView.Adapter implements Filterable {
    public final AbsAdapter wrappedAdapter;
    public final List headerViewInfoList = new ArrayList();
    public final List footerViewInfoList = new ArrayList();
    public final HeaderFooterAdapter$observer$1 observer = new RecyclerView.AdapterDataObserver() { // from class: androidx.picker.adapter.HeaderFooterAdapter$observer$1
        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onChanged() {
            HeaderFooterAdapter.this.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i, int i2) {
            HeaderFooterAdapter headerFooterAdapter = HeaderFooterAdapter.this;
            headerFooterAdapter.mObservable.notifyItemRangeChanged(((ArrayList) headerFooterAdapter.headerViewInfoList).size() + i, i2, null);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeInserted(int i, int i2) {
            HeaderFooterAdapter headerFooterAdapter = HeaderFooterAdapter.this;
            headerFooterAdapter.notifyItemRangeInserted(((ArrayList) headerFooterAdapter.headerViewInfoList).size() + i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeMoved(int i, int i2) {
            HeaderFooterAdapter headerFooterAdapter = HeaderFooterAdapter.this;
            IntProgressionIterator it = RangesKt___RangesKt.until(((ArrayList) headerFooterAdapter.headerViewInfoList).size(), ((ArrayList) headerFooterAdapter.headerViewInfoList).size() + 1).iterator();
            while (it.hasNext) {
                int nextInt = it.nextInt();
                headerFooterAdapter.notifyItemMoved(i + nextInt, nextInt + i2);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeRemoved(int i, int i2) {
            HeaderFooterAdapter headerFooterAdapter = HeaderFooterAdapter.this;
            headerFooterAdapter.notifyItemRangeRemoved(((ArrayList) headerFooterAdapter.headerViewInfoList).size() + i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i, int i2, Object obj) {
            HeaderFooterAdapter headerFooterAdapter = HeaderFooterAdapter.this;
            headerFooterAdapter.mObservable.notifyItemRangeChanged(((ArrayList) headerFooterAdapter.headerViewInfoList).size() + i, i2, obj);
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.picker.adapter.HeaderFooterAdapter$observer$1] */
    public HeaderFooterAdapter(AbsAdapter absAdapter) {
        this.wrappedAdapter = absAdapter;
        setHasStableIds(absAdapter.mHasStableIds);
    }

    @Override // android.widget.Filterable
    public final Filter getFilter() {
        return this.wrappedAdapter.getFilter();
    }

    public final int getFootersCount() {
        return ((ArrayList) this.footerViewInfoList).size();
    }

    public final int getHeadersCount() {
        return ((ArrayList) this.headerViewInfoList).size();
    }

    public final ViewData getItem(int i) {
        if (getItemCount() <= i) {
            return null;
        }
        int itemViewType = getItemViewType(i);
        if (itemViewType != 1000) {
            if (itemViewType != 1001) {
                return (ViewData) ((ArrayList) this.wrappedAdapter.mDataSetFiltered).get(i - getHeadersCount());
            }
            return (ViewData) ((ArrayList) this.footerViewInfoList).get(getFootersCount() + (i - getItemCount()));
        }
        return (ViewData) ((ArrayList) this.headerViewInfoList).get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return getFootersCount() + getHeadersCount() + this.wrappedAdapter.getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int i) {
        int hashCode;
        if (getItemCount() <= i) {
            return -1L;
        }
        int itemViewType = getItemViewType(i);
        if (itemViewType != 1000) {
            if (itemViewType != 1001) {
                return this.wrappedAdapter.getItemId(i - getHeadersCount());
            }
            hashCode = ((HeaderFooterViewData) ((ArrayList) this.footerViewInfoList).get(getFootersCount() + (i - getItemCount()))).hashCode();
        } else {
            hashCode = ((HeaderFooterViewData) ((ArrayList) this.headerViewInfoList).get(i)).hashCode();
        }
        return hashCode;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        int headersCount = getHeadersCount();
        if (i < headersCount) {
            return 1000;
        }
        if (i >= getItemCount() - getFootersCount()) {
            return 1001;
        }
        return this.wrappedAdapter.getItemViewType(i - headersCount);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.wrappedAdapter.registerAdapterDataObserver(this.observer);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        PickerViewHolder pickerViewHolder = (PickerViewHolder) viewHolder;
        int itemViewType = getItemViewType(i);
        View view = pickerViewHolder.itemView;
        if (itemViewType == 1000) {
            ViewGroup viewGroup = (ViewGroup) view;
            viewGroup.removeAllViews();
            viewGroup.addView(((HeaderFooterViewData) ((ArrayList) this.headerViewInfoList).get(i)).view);
        } else {
            if (itemViewType != 1001) {
                this.wrappedAdapter.onBindViewHolder(pickerViewHolder, i - getHeadersCount());
                return;
            }
            int footersCount = getFootersCount() + (i - getItemCount());
            ViewGroup viewGroup2 = (ViewGroup) view;
            viewGroup2.removeAllViews();
            viewGroup2.addView(((HeaderFooterViewData) ((ArrayList) this.footerViewInfoList).get(footersCount)).view);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(RecyclerView recyclerView, int i) {
        if (i != 1000) {
            if (i != 1001) {
                return (PickerViewHolder) this.wrappedAdapter.onCreateViewHolder(recyclerView, i);
            }
            return new FrameViewHolder(LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.picker_app_frame, (ViewGroup) recyclerView, false));
        }
        return new FrameViewHolder(LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.picker_app_frame, (ViewGroup) recyclerView, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        AbsAdapter absAdapter = this.wrappedAdapter;
        absAdapter.mObservable.unregisterObserver(this.observer);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List list) {
        PickerViewHolder pickerViewHolder = (PickerViewHolder) viewHolder;
        boolean z = true;
        if (!list.isEmpty()) {
            int itemViewType = getItemViewType(i);
            if (itemViewType != 1000 && itemViewType != 1001) {
                z = false;
            }
            if (!z) {
                AbsAdapter absAdapter = this.wrappedAdapter;
                int headersCount = i - getHeadersCount();
                absAdapter.getClass();
                if (list.isEmpty()) {
                    absAdapter.onBindViewHolder((RecyclerView.ViewHolder) pickerViewHolder, headersCount);
                    return;
                } else {
                    absAdapter.onBindViewHolder(pickerViewHolder, headersCount);
                    return;
                }
            }
        }
        onBindViewHolder(pickerViewHolder, i);
    }
}
