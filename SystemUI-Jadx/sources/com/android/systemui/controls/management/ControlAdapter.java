package com.android.systemui.controls.management;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.R;
import com.android.systemui.controls.ControlInterface;
import com.android.systemui.controls.management.ControlsModel;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlAdapter extends RecyclerView.Adapter {
    public static final Companion Companion = new Companion(null);
    public final int currentUserId;
    public final float elevation;
    public ControlsModel model;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static int findMaxColumns(Resources resources) {
            int i;
            int integer = resources.getInteger(R.integer.controls_max_columns);
            int integer2 = resources.getInteger(R.integer.controls_max_columns_adjust_below_width_dp);
            TypedValue typedValue = new TypedValue();
            boolean z = true;
            resources.getValue(R.dimen.controls_max_columns_adjust_above_font_scale, typedValue, true);
            float f = typedValue.getFloat();
            Configuration configuration = resources.getConfiguration();
            if (configuration.orientation != 1) {
                z = false;
            }
            if (z && (i = configuration.screenWidthDp) != 0 && i <= integer2 && configuration.fontScale >= f) {
                return integer - 1;
            }
            return integer;
        }
    }

    public ControlAdapter(float f, int i) {
        this.elevation = f;
        this.currentUserId = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        List elements;
        ControlsModel controlsModel = this.model;
        if (controlsModel != null && (elements = controlsModel.getElements()) != null) {
            return elements.size();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        ControlsModel controlsModel = this.model;
        if (controlsModel != null) {
            ElementWrapper elementWrapper = (ElementWrapper) controlsModel.getElements().get(i);
            if (elementWrapper instanceof ZoneNameWrapper) {
                return 0;
            }
            if ((elementWrapper instanceof ControlStatusWrapper) || (elementWrapper instanceof ControlInfoWrapper)) {
                return 1;
            }
            if (elementWrapper instanceof DividerWrapper) {
                return 2;
            }
            throw new NoWhenBranchMatchedException();
        }
        throw new IllegalStateException("Getting item type for null model");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        Holder holder = (Holder) viewHolder;
        ControlsModel controlsModel = this.model;
        if (controlsModel != null) {
            holder.bindData((ElementWrapper) controlsModel.getElements().get(i));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(RecyclerView recyclerView, int i) {
        ControlsModel.MoveHelper moveHelper;
        LayoutInflater from = LayoutInflater.from(recyclerView.getContext());
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    return new DividerHolder(from.inflate(R.layout.controls_horizontal_divider_with_empty, (ViewGroup) recyclerView, false));
                }
                throw new IllegalStateException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Wrong viewType: ", i));
            }
            View inflate = from.inflate(R.layout.controls_base_item, (ViewGroup) recyclerView, false);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) inflate.getLayoutParams();
            marginLayoutParams.width = -1;
            marginLayoutParams.topMargin = 0;
            marginLayoutParams.bottomMargin = 0;
            marginLayoutParams.leftMargin = 0;
            marginLayoutParams.rightMargin = 0;
            inflate.setElevation(this.elevation);
            inflate.setBackground(recyclerView.getContext().getDrawable(R.drawable.control_background_ripple));
            ControlsModel controlsModel = this.model;
            if (controlsModel != null) {
                moveHelper = controlsModel.getMoveHelper();
            } else {
                moveHelper = null;
            }
            return new ControlHolder(inflate, this.currentUserId, moveHelper, new Function2() { // from class: com.android.systemui.controls.management.ControlAdapter$onCreateViewHolder$2
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    String str = (String) obj;
                    boolean booleanValue = ((Boolean) obj2).booleanValue();
                    ControlsModel controlsModel2 = ControlAdapter.this.model;
                    if (controlsModel2 != null) {
                        controlsModel2.changeFavoriteStatus(str, booleanValue);
                    }
                    return Unit.INSTANCE;
                }
            });
        }
        return new ZoneHolder(from.inflate(R.layout.controls_zone_header, (ViewGroup) recyclerView, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List list) {
        Holder holder = (Holder) viewHolder;
        if (list.isEmpty()) {
            onBindViewHolder(holder, i);
            return;
        }
        ControlsModel controlsModel = this.model;
        if (controlsModel != null) {
            Object obj = (ElementWrapper) controlsModel.getElements().get(i);
            if (obj instanceof ControlInterface) {
                holder.updateFavorite(((ControlInterface) obj).getFavorite());
            }
        }
    }
}
