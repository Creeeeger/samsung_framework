package androidx.picker.features.composable;

import androidx.picker.features.composable.icon.IconFrame;
import androidx.picker.features.composable.left.LeftFrame;
import androidx.picker.features.composable.title.TitleFrame;
import androidx.picker.features.composable.widget.WidgetFrame;
import androidx.picker.model.viewdata.AllAppsViewData;
import androidx.picker.model.viewdata.AppInfoViewData;
import androidx.picker.model.viewdata.CategoryViewData;
import androidx.picker.model.viewdata.ViewData;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class DefaultComposableStrategy implements ComposableStrategy {
    private final List<ComposableFrame> leftFrameList = ArraysKt___ArraysKt.toList(LeftFrame.values());
    private final List<ComposableFrame> iconFrameList = ArraysKt___ArraysKt.toList(IconFrame.values());
    private final List<ComposableFrame> titleFrameList = ArraysKt___ArraysKt.toList(TitleFrame.values());
    private final List<ComposableFrame> widgetFrameList = ArraysKt___ArraysKt.toList(WidgetFrame.values());

    @Override // androidx.picker.features.composable.ComposableStrategy
    public List<ComposableFrame> getIconFrameList() {
        return this.iconFrameList;
    }

    @Override // androidx.picker.features.composable.ComposableStrategy
    public List<ComposableFrame> getLeftFrameList() {
        return this.leftFrameList;
    }

    @Override // androidx.picker.features.composable.ComposableStrategy
    public List<ComposableFrame> getTitleFrameList() {
        return this.titleFrameList;
    }

    @Override // androidx.picker.features.composable.ComposableStrategy
    public List getWidgetFrameList() {
        return this.widgetFrameList;
    }

    @Override // androidx.picker.features.composable.ComposableStrategy
    public ComposableType selectComposableType(ViewData viewData) {
        if (viewData instanceof AllAppsViewData) {
            return ComposableTypeSet.AllSwitch;
        }
        if (viewData instanceof CategoryViewData) {
            return ComposableTypeSet.CheckBox_Expander;
        }
        if (viewData instanceof AppInfoViewData) {
            AppInfoViewData appInfoViewData = (AppInfoViewData) viewData;
            int itemType = appInfoViewData.getItemType();
            if (itemType != 2) {
                if (itemType != 4) {
                    if (itemType != 5) {
                        return ComposableTypeSet.TextOnly;
                    }
                    return ComposableTypeSet.Switch;
                }
                if (appInfoViewData.getActionIcon() != null) {
                    return ComposableTypeSet.Radio_Action;
                }
                return ComposableTypeSet.Radio;
            }
            if (appInfoViewData.getActionIcon() != null) {
                return ComposableTypeSet.CheckBox_Action;
            }
            return ComposableTypeSet.CheckBox;
        }
        return null;
    }
}
