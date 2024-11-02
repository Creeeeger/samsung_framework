package com.android.systemui.qs.bar.soundcraft.viewbinding;

import android.view.View;
import android.view.ViewStub;
import android.widget.TextView;
import com.android.systemui.R;
import com.android.systemui.qs.bar.soundcraft.view.routine.RoutineTestView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class RoutineTestViewBinding {
    public final RoutineTestView root;
    public final TextView routineCountText;
    public final View startButton;
    public final View stopButton;
    public final View updateButton;
    public final View view;

    public RoutineTestViewBinding(ViewStub viewStub) {
        View inflate = viewStub.inflate();
        this.view = inflate;
        this.root = (RoutineTestView) inflate.findViewById(R.id.routine_test_root);
        this.startButton = inflate.findViewById(R.id.routine_test_start_button);
        this.updateButton = inflate.findViewById(R.id.routine_test_update_button);
        this.stopButton = inflate.findViewById(R.id.routine_test_stop_button);
        this.routineCountText = (TextView) inflate.findViewById(R.id.routine_test_routine_count_text);
    }
}
