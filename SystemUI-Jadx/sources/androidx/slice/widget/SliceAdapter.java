package androidx.slice.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.ArrayMap;
import androidx.recyclerview.widget.RecyclerView;
import androidx.slice.SliceItem;
import androidx.slice.core.SliceQuery;
import com.android.systemui.R;
import com.android.systemui.volume.VolumePanelDialog$$ExternalSyntheticLambda4;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SliceAdapter extends RecyclerView.Adapter {
    public boolean mAllowTwoLines;
    public final Context mContext;
    public int mInsetBottom;
    public int mInsetEnd;
    public int mInsetStart;
    public int mInsetTop;
    public long mLastUpdated;
    public SliceView mParent;
    public SliceViewPolicy mPolicy;
    public boolean mShowLastUpdated;
    public List mSliceActions;
    public VolumePanelDialog$$ExternalSyntheticLambda4 mSliceObserver;
    public SliceStyle mSliceStyle;
    public TemplateView mTemplateView;
    public final IdGenerator mIdGen = new IdGenerator();
    public List mSlices = new ArrayList();
    public Set mLoadingActions = new HashSet();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class IdGenerator {
        public long mNextLong = 0;
        public final ArrayMap mCurrentIds = new ArrayMap();
        public final ArrayMap mUsedIds = new ArrayMap();
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SliceViewHolder extends RecyclerView.ViewHolder implements View.OnTouchListener, View.OnClickListener {
        public final SliceChildView mSliceChildView;

        public SliceViewHolder(View view) {
            super(view);
            SliceChildView sliceChildView;
            if (view instanceof SliceChildView) {
                sliceChildView = (SliceChildView) view;
            } else {
                sliceChildView = null;
            }
            this.mSliceChildView = sliceChildView;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SliceView sliceView = SliceAdapter.this.mParent;
            if (sliceView != null) {
                sliceView.mClickInfo = (int[]) view.getTag();
                SliceAdapter.this.mParent.performClick();
            }
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            boolean z;
            ListContent listContent;
            TemplateView templateView = SliceAdapter.this.mTemplateView;
            if (templateView != null) {
                SliceView sliceView = templateView.mParent;
                if (sliceView != null) {
                    if (sliceView.mOnClickListener == null && ((listContent = sliceView.mListContent) == null || listContent.getShortcut(sliceView.getContext()) == null)) {
                        z = false;
                    } else {
                        z = true;
                    }
                    if (!z) {
                        templateView.mForeground.setPressed(false);
                    }
                }
                templateView.mForeground.getLocationOnScreen(templateView.mLoc);
                templateView.mForeground.getBackground().setHotspot((int) (motionEvent.getRawX() - templateView.mLoc[0]), (int) (motionEvent.getRawY() - templateView.mLoc[1]));
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 0) {
                    templateView.mForeground.setPressed(true);
                } else if (actionMasked == 3 || actionMasked == 1 || actionMasked == 2) {
                    templateView.mForeground.setPressed(false);
                }
            }
            return false;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SliceWrapper {
        public final long mId;
        public final SliceContent mItem;
        public final int mType;

        public SliceWrapper(SliceContent sliceContent, IdGenerator idGenerator, int i) {
            int i2;
            String valueOf;
            int i3;
            this.mItem = sliceContent;
            SliceItem sliceItem = sliceContent.mSliceItem;
            if ("message".equals(sliceItem.mSubType)) {
                if (SliceQuery.findSubtype(sliceItem, (String) null, "source") != null) {
                    i2 = 4;
                } else {
                    i2 = 5;
                }
            } else if (sliceItem.hasHint("horizontal")) {
                i2 = 3;
            } else if (!sliceItem.hasHint("list_item")) {
                i2 = 2;
            } else {
                i2 = 1;
            }
            this.mType = i2;
            SliceItem sliceItem2 = sliceContent.mSliceItem;
            idGenerator.getClass();
            if (!"slice".equals(sliceItem2.mFormat) && !"action".equals(sliceItem2.mFormat)) {
                valueOf = sliceItem2.toString();
            } else {
                valueOf = String.valueOf(sliceItem2.getSlice().getItems().size());
            }
            ArrayMap arrayMap = idGenerator.mCurrentIds;
            if (!arrayMap.containsKey(valueOf)) {
                long j = idGenerator.mNextLong;
                idGenerator.mNextLong = 1 + j;
                arrayMap.put(valueOf, Long.valueOf(j));
            }
            long longValue = ((Long) arrayMap.get(valueOf)).longValue();
            ArrayMap arrayMap2 = idGenerator.mUsedIds;
            Integer num = (Integer) arrayMap2.get(valueOf);
            if (num != null) {
                i3 = num.intValue();
            } else {
                i3 = 0;
            }
            arrayMap2.put(valueOf, Integer.valueOf(i3 + 1));
            this.mId = longValue + (i3 * 10000);
        }
    }

    public SliceAdapter(Context context) {
        this.mContext = context;
        setHasStableIds(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.mSlices.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int i) {
        return ((SliceWrapper) this.mSlices.get(i)).mId;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        return ((SliceWrapper) this.mSlices.get(i)).mType;
    }

    public final void notifyHeaderChanged() {
        if (getItemCount() > 0) {
            notifyItemChanged(0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        boolean z;
        int i2;
        boolean z2;
        long j;
        int i3;
        List list;
        SliceViewHolder sliceViewHolder = (SliceViewHolder) viewHolder;
        SliceContent sliceContent = ((SliceWrapper) ((ArrayList) this.mSlices).get(i)).mItem;
        if (sliceViewHolder.mSliceChildView != null && sliceContent != null) {
            RowStyle rowStyle = SliceAdapter.this.mSliceStyle.getRowStyle(sliceContent.mSliceItem);
            sliceViewHolder.mSliceChildView.setOnClickListener(sliceViewHolder);
            sliceViewHolder.mSliceChildView.setOnTouchListener(sliceViewHolder);
            SliceChildView sliceChildView = sliceViewHolder.mSliceChildView;
            SliceAdapter sliceAdapter = SliceAdapter.this;
            sliceChildView.mLoadingListener = sliceAdapter;
            int i4 = 0;
            if (sliceContent instanceof RowContent) {
                z = ((RowContent) sliceContent).mIsHeader;
            } else if (i == 0) {
                z = true;
            } else {
                z = false;
            }
            sliceChildView.setLoadingActions(sliceAdapter.mLoadingActions);
            sliceViewHolder.mSliceChildView.setPolicy(SliceAdapter.this.mPolicy);
            SliceChildView sliceChildView2 = sliceViewHolder.mSliceChildView;
            Integer num = rowStyle.mTintColor;
            if (num != null) {
                i2 = num.intValue();
            } else {
                i2 = rowStyle.mSliceStyle.mTintColor;
            }
            sliceChildView2.setTint(i2);
            sliceViewHolder.mSliceChildView.setStyle(SliceAdapter.this.mSliceStyle, rowStyle);
            SliceChildView sliceChildView3 = sliceViewHolder.mSliceChildView;
            if (z && SliceAdapter.this.mShowLastUpdated) {
                z2 = true;
            } else {
                z2 = false;
            }
            sliceChildView3.setShowLastUpdated(z2);
            SliceChildView sliceChildView4 = sliceViewHolder.mSliceChildView;
            if (z) {
                j = SliceAdapter.this.mLastUpdated;
            } else {
                j = -1;
            }
            sliceChildView4.setLastUpdated(j);
            if (i == 0) {
                i3 = SliceAdapter.this.mInsetTop;
            } else {
                i3 = 0;
            }
            if (i == SliceAdapter.this.getItemCount() - 1) {
                i4 = SliceAdapter.this.mInsetBottom;
            }
            SliceChildView sliceChildView5 = sliceViewHolder.mSliceChildView;
            SliceAdapter sliceAdapter2 = SliceAdapter.this;
            sliceChildView5.setInsets(sliceAdapter2.mInsetStart, i3, sliceAdapter2.mInsetEnd, i4);
            sliceViewHolder.mSliceChildView.setAllowTwoLines(SliceAdapter.this.mAllowTwoLines);
            SliceChildView sliceChildView6 = sliceViewHolder.mSliceChildView;
            if (z) {
                list = SliceAdapter.this.mSliceActions;
            } else {
                list = null;
            }
            sliceChildView6.setSliceActions(list);
            sliceViewHolder.mSliceChildView.setSliceItem(sliceContent, z, i, SliceAdapter.this.getItemCount(), SliceAdapter.this.mSliceObserver);
            sliceViewHolder.mSliceChildView.setTag(new int[]{ListContent.getRowType(sliceContent, z, SliceAdapter.this.mSliceActions), i});
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(RecyclerView recyclerView, int i) {
        View gridRowView;
        Context context = this.mContext;
        if (i != 3) {
            if (i != 4) {
                if (i != 5) {
                    gridRowView = new RowView(context);
                } else {
                    gridRowView = LayoutInflater.from(context).inflate(R.layout.abc_slice_message_local, (ViewGroup) null);
                }
            } else {
                gridRowView = LayoutInflater.from(context).inflate(R.layout.abc_slice_message, (ViewGroup) null);
            }
        } else {
            View inflate = LayoutInflater.from(context).inflate(R.layout.abc_slice_grid, (ViewGroup) null);
            if (inflate instanceof GridRowView) {
                gridRowView = (GridRowView) inflate;
            } else {
                gridRowView = new GridRowView(context, null);
            }
        }
        gridRowView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        return new SliceViewHolder(gridRowView);
    }

    public final void onSliceActionLoading(SliceItem sliceItem, int i) {
        this.mLoadingActions.add(sliceItem);
        if (getItemCount() > i) {
            notifyItemChanged(i);
        } else {
            notifyDataSetChanged();
        }
    }

    public final void setSliceItems(int i, List list) {
        if (list == null) {
            this.mLoadingActions.clear();
            ((ArrayList) this.mSlices).clear();
        } else {
            IdGenerator idGenerator = this.mIdGen;
            idGenerator.mUsedIds.clear();
            this.mSlices = new ArrayList(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                SliceContent sliceContent = (SliceContent) it.next();
                ((ArrayList) this.mSlices).add(new SliceWrapper(sliceContent, idGenerator, i));
            }
        }
        notifyDataSetChanged();
    }
}
