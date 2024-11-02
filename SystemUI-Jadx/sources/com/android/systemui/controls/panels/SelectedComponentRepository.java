package com.android.systemui.controls.panels;

import android.content.ComponentName;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import com.android.systemui.controls.ui.SelectedItem;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface SelectedComponentRepository {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SelectedComponent {
        public final ComponentName componentName;
        public final boolean isPanel;
        public final String name;

        public SelectedComponent(String str, ComponentName componentName, boolean z) {
            this.name = str;
            this.componentName = componentName;
            this.isPanel = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SelectedComponent)) {
                return false;
            }
            SelectedComponent selectedComponent = (SelectedComponent) obj;
            if (Intrinsics.areEqual(this.name, selectedComponent.name) && Intrinsics.areEqual(this.componentName, selectedComponent.componentName) && this.isPanel == selectedComponent.isPanel) {
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
            StringBuilder sb = new StringBuilder("SelectedComponent(name=");
            sb.append(this.name);
            sb.append(", componentName=");
            sb.append(this.componentName);
            sb.append(", isPanel=");
            return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.isPanel, ")");
        }

        public SelectedComponent(SelectedItem selectedItem) {
            this(selectedItem.getName().toString(), selectedItem.getComponentName(), selectedItem instanceof SelectedItem.PanelItem);
        }
    }
}
