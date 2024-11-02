package com.android.systemui.volume;

import android.net.Uri;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.recyclerview.widget.RecyclerView;
import androidx.slice.Slice;
import androidx.slice.SliceItem;
import androidx.slice.widget.SliceView;
import com.android.systemui.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class VolumePanelSlicesAdapter extends RecyclerView.Adapter {
    public final LifecycleOwner mLifecycleOwner;
    public VolumePanelDialog$$ExternalSyntheticLambda4 mOnSliceActionListener;
    public final List mSliceLiveData;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SliceRowViewHolder extends RecyclerView.ViewHolder {
        public final SliceView mSliceView;

        /* JADX WARN: Removed duplicated region for block: B:15:0x007c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public SliceRowViewHolder(android.view.View r7) {
            /*
                r5 = this;
                com.android.systemui.volume.VolumePanelSlicesAdapter.this = r6
                r5.<init>(r7)
                r0 = 2131364429(0x7f0a0a4d, float:1.8348695E38)
                android.view.View r7 = r7.findViewById(r0)
                androidx.slice.widget.SliceView r7 = (androidx.slice.widget.SliceView) r7
                r5.mSliceView = r7
                androidx.slice.widget.SliceViewPolicy r5 = r7.mViewPolicy
                int r0 = r5.mMode
                r1 = 1
                r2 = 2
                if (r0 != r2) goto L1a
                goto L9f
            L1a:
                if (r0 == r2) goto L33
                r5.mMode = r2
                androidx.slice.widget.SliceViewPolicy$PolicyChangeListener r5 = r5.mListener
                if (r5 == 0) goto L33
                androidx.slice.widget.TemplateView r5 = (androidx.slice.widget.TemplateView) r5
                androidx.slice.widget.ListContent r0 = r5.mListContent
                if (r0 == 0) goto L33
                androidx.slice.widget.SliceStyle r3 = r5.mSliceStyle
                androidx.slice.widget.SliceViewPolicy r4 = r5.mViewPolicy
                int r0 = r0.getHeight(r3, r4)
                r5.updateDisplayedItems(r0)
            L33:
                androidx.slice.widget.SliceViewPolicy r5 = r7.mViewPolicy
                int r5 = r5.mMode
                androidx.slice.widget.SliceChildView r0 = r7.mCurrentView
                boolean r3 = r0 instanceof androidx.slice.widget.ShortcutView
                java.util.Set r0 = r0.getLoadingActions()
                r4 = 3
                if (r5 != r4) goto L5c
                if (r3 != 0) goto L5c
                androidx.slice.widget.SliceChildView r5 = r7.mCurrentView
                r7.removeView(r5)
                androidx.slice.widget.ShortcutView r5 = new androidx.slice.widget.ShortcutView
                android.content.Context r3 = r7.getContext()
                r5.<init>(r3)
                r7.mCurrentView = r5
                android.view.ViewGroup$LayoutParams r3 = r7.getChildLp(r5)
                r7.addView(r5, r3)
                goto L77
            L5c:
                if (r5 == r4) goto L79
                if (r3 == 0) goto L79
                androidx.slice.widget.SliceChildView r5 = r7.mCurrentView
                r7.removeView(r5)
                androidx.slice.widget.TemplateView r5 = new androidx.slice.widget.TemplateView
                android.content.Context r3 = r7.getContext()
                r5.<init>(r3)
                r7.mCurrentView = r5
                android.view.ViewGroup$LayoutParams r3 = r7.getChildLp(r5)
                r7.addView(r5, r3)
            L77:
                r5 = r1
                goto L7a
            L79:
                r5 = 0
            L7a:
                if (r5 == 0) goto L9c
                androidx.slice.widget.SliceChildView r5 = r7.mCurrentView
                androidx.slice.widget.SliceViewPolicy r3 = r7.mViewPolicy
                r5.setPolicy(r3)
                r7.applyConfigurations()
                androidx.slice.widget.ListContent r5 = r7.mListContent
                if (r5 == 0) goto L97
                boolean r5 = r5.isValid()
                if (r5 == 0) goto L97
                androidx.slice.widget.SliceChildView r5 = r7.mCurrentView
                androidx.slice.widget.ListContent r3 = r7.mListContent
                r5.setSliceContent(r3)
            L97:
                androidx.slice.widget.SliceChildView r5 = r7.mCurrentView
                r5.setLoadingActions(r0)
            L9c:
                r7.updateActions()
            L9f:
                r7.mShowTitleItems = r1
                androidx.slice.widget.ListContent r5 = r7.mListContent
                if (r5 == 0) goto Lab
                androidx.slice.widget.RowContent r5 = r5.mHeaderContent
                if (r5 == 0) goto Lab
                r5.mShowTitleItems = r1
            Lab:
                r7.setImportantForAccessibility(r2)
                com.android.systemui.volume.VolumePanelDialog$$ExternalSyntheticLambda4 r5 = r6.mOnSliceActionListener
                r7.mSliceObserver = r5
                androidx.slice.widget.SliceChildView r6 = r7.mCurrentView
                r6.setSliceActionListener(r5)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.volume.VolumePanelSlicesAdapter.SliceRowViewHolder.<init>(com.android.systemui.volume.VolumePanelSlicesAdapter, android.view.View):void");
        }
    }

    public VolumePanelSlicesAdapter(LifecycleOwner lifecycleOwner, Map<Uri, LiveData> map) {
        this.mLifecycleOwner = lifecycleOwner;
        this.mSliceLiveData = new ArrayList(map.values());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return ((ArrayList) this.mSliceLiveData).size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        boolean z;
        SliceRowViewHolder sliceRowViewHolder = (SliceRowViewHolder) viewHolder;
        LiveData liveData = (LiveData) ((ArrayList) this.mSliceLiveData).get(i);
        LifecycleOwner lifecycleOwner = VolumePanelSlicesAdapter.this.mLifecycleOwner;
        SliceView sliceView = sliceRowViewHolder.mSliceView;
        liveData.observe(lifecycleOwner, sliceView);
        Slice slice = (Slice) liveData.getValue();
        if (slice != null) {
            if (!Arrays.asList(slice.mHints).contains("error")) {
                Iterator it = slice.getItems().iterator();
                while (it.hasNext()) {
                    if (((SliceItem) it.next()).mFormat.equals("slice")) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            if (z) {
                sliceView.setVisibility(0);
                return;
            }
        }
        sliceView.setVisibility(8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(RecyclerView recyclerView, int i) {
        return new SliceRowViewHolder(this, LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.volume_panel_slice_slider_row, (ViewGroup) recyclerView, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        return i;
    }
}
