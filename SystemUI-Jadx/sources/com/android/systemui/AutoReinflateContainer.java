package com.android.systemui;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import androidx.appcompat.app.ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.samsung.android.nexus.video.VideoPlayer;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class AutoReinflateContainer extends FrameLayout {
    public static final Set SUPPORTED_CHANGES = Set.of(4, 512, Integer.valueOf(VideoPlayer.MEDIA_ERROR_SYSTEM), 4096, Integer.valueOf(VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS));
    public final List mInflateListeners;
    public final Configuration mLastConfig;
    public final int mLayout;

    public AutoReinflateContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mInflateListeners = new ArrayList();
        this.mLastConfig = new Configuration();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.AutoReinflateContainer);
        if (obtainStyledAttributes.hasValue(0)) {
            this.mLayout = obtainStyledAttributes.getResourceId(0, 0);
            obtainStyledAttributes.recycle();
            inflateLayout();
            return;
        }
        throw new IllegalArgumentException("AutoReinflateContainer must contain a layout");
    }

    public final void inflateLayout() {
        removeAllViews();
        inflateLayoutImpl();
        if (this.mInflateListeners.size() <= 0) {
            return;
        }
        ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(this.mInflateListeners.get(0));
        getChildAt(0);
        throw null;
    }

    public void inflateLayoutImpl() {
        LayoutInflater.from(getContext()).inflate(this.mLayout, this);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        int updateFrom = this.mLastConfig.updateFrom(configuration);
        Iterator it = SUPPORTED_CHANGES.iterator();
        while (it.hasNext()) {
            if ((((Integer) it.next()).intValue() & updateFrom) != 0) {
                inflateLayout();
                return;
            }
        }
    }
}
