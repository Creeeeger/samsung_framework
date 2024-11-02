package androidx.picker.features.composable;

import androidx.picker.model.viewdata.ViewData;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface ComposableStrategy {
    List<ComposableFrame> getIconFrameList();

    List<ComposableFrame> getLeftFrameList();

    List<ComposableFrame> getTitleFrameList();

    List<ComposableFrame> getWidgetFrameList();

    ComposableType selectComposableType(ViewData viewData);
}
