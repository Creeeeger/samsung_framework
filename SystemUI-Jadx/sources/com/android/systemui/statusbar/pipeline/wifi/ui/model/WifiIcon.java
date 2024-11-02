package com.android.systemui.statusbar.pipeline.wifi.ui.model;

import com.android.systemui.common.shared.model.ContentDescription;
import com.android.systemui.common.shared.model.Icon;
import com.android.systemui.log.table.Diffable;
import com.android.systemui.log.table.TableLogBuffer;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface WifiIcon extends Diffable {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Hidden implements WifiIcon {
        public static final Hidden INSTANCE = new Hidden();

        private Hidden() {
        }

        @Override // com.android.systemui.log.table.Diffable
        public final void logDiffs(Diffable diffable, TableLogBuffer.TableRowLoggerImpl tableRowLoggerImpl) {
            if (!Intrinsics.areEqual(((WifiIcon) diffable).toString(), "hidden")) {
                tableRowLoggerImpl.logChange("icon", "hidden");
            }
        }

        @Override // com.android.systemui.log.table.Diffable
        public final void logFull(TableLogBuffer.TableRowLoggerImpl tableRowLoggerImpl) {
            tableRowLoggerImpl.logChange("icon", "hidden");
        }

        public final String toString() {
            return "hidden";
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Visible implements WifiIcon {
        public final ContentDescription.Loaded contentDescription;
        public final Icon.Resource icon;

        public Visible(int i, ContentDescription.Loaded loaded) {
            this.contentDescription = loaded;
            this.icon = new Icon.Resource(i, loaded);
        }

        @Override // com.android.systemui.log.table.Diffable
        public final void logDiffs(Diffable diffable, TableLogBuffer.TableRowLoggerImpl tableRowLoggerImpl) {
            if (!Intrinsics.areEqual(((WifiIcon) diffable).toString(), toString())) {
                tableRowLoggerImpl.logChange("icon", toString());
            }
        }

        @Override // com.android.systemui.log.table.Diffable
        public final void logFull(TableLogBuffer.TableRowLoggerImpl tableRowLoggerImpl) {
            tableRowLoggerImpl.logChange("icon", toString());
        }

        public final String toString() {
            return String.valueOf(this.contentDescription.description);
        }
    }
}
