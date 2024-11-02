package com.android.systemui.people;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PeopleSpaceTileView extends LinearLayout {
    public final TextView mNameView;
    public final ImageView mPersonIconView;
    public final View mTileView;

    public PeopleSpaceTileView(Context context, ViewGroup viewGroup, String str, boolean z) {
        super(context);
        View findViewWithTag = viewGroup.findViewWithTag(str);
        this.mTileView = findViewWithTag;
        if (findViewWithTag == null) {
            LayoutInflater from = LayoutInflater.from(context);
            View inflate = from.inflate(R.layout.people_space_tile_view, viewGroup, false);
            this.mTileView = inflate;
            viewGroup.addView(inflate, -1, -1);
            inflate.setTag(str);
            if (!z) {
                from.inflate(R.layout.people_space_activity_list_divider, viewGroup, true);
            }
        }
        this.mNameView = (TextView) this.mTileView.findViewById(R.id.tile_view_name);
        this.mPersonIconView = (ImageView) this.mTileView.findViewById(R.id.tile_view_person_icon);
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.mTileView.setOnClickListener(onClickListener);
    }
}
