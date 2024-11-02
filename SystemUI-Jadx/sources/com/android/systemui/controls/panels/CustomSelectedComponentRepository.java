package com.android.systemui.controls.panels;

import android.content.ComponentName;
import com.android.systemui.controls.ui.SelectedItem;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface CustomSelectedComponentRepository {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class CustomSelectedComponent {
        public final ComponentName componentName;
        public final boolean isPanel;
        public final String name;

        public CustomSelectedComponent(String str, ComponentName componentName, boolean z) {
            this.name = str;
            this.componentName = componentName;
            this.isPanel = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CustomSelectedComponent)) {
                return false;
            }
            CustomSelectedComponent customSelectedComponent = (CustomSelectedComponent) obj;
            if (Intrinsics.areEqual(this.name, customSelectedComponent.name) && Intrinsics.areEqual(this.componentName, customSelectedComponent.componentName) && this.isPanel == customSelectedComponent.isPanel) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            int hashCode;
            int hashCode2 = this.name.hashCode() * 31;
            ComponentName componentName = this.componentName;
            if (componentName == null) {
                hashCode = 0;
            } else {
                hashCode = componentName.hashCode();
            }
            int i = (hashCode2 + hashCode) * 31;
            boolean z = this.isPanel;
            int i2 = z;
            if (z != 0) {
                i2 = 1;
            }
            return i + i2;
        }

        public final String toString() {
            return "CustomSelectedComponent{" + this.name + ", isPanel = " + this.isPanel + ", componentName = " + this.componentName + "}";
        }

        public CustomSelectedComponent(SelectedItem selectedItem) {
            this(selectedItem.getName().toString(), selectedItem.getComponentName(), selectedItem instanceof SelectedItem.PanelItem);
        }
    }
}
