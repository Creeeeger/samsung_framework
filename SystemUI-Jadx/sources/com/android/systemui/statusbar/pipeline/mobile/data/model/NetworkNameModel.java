package com.android.systemui.statusbar.pipeline.mobile.data.model;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import com.android.systemui.log.table.Diffable;
import com.android.systemui.log.table.TableLogBuffer;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface NetworkNameModel extends Diffable {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Default implements NetworkNameModel {
        public final String name;

        public Default(String str) {
            this.name = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Default)) {
                return false;
            }
            if (Intrinsics.areEqual(this.name, ((Default) obj).name)) {
                return true;
            }
            return false;
        }

        @Override // com.android.systemui.statusbar.pipeline.mobile.data.model.NetworkNameModel
        public final String getName() {
            return this.name;
        }

        public final int hashCode() {
            return this.name.hashCode();
        }

        @Override // com.android.systemui.log.table.Diffable
        public final void logDiffs(Diffable diffable, TableLogBuffer.TableRowLoggerImpl tableRowLoggerImpl) {
            NetworkNameModel networkNameModel = (NetworkNameModel) diffable;
            boolean z = networkNameModel instanceof Default;
            String str = this.name;
            if (!z || !Intrinsics.areEqual(networkNameModel.getName(), str)) {
                tableRowLoggerImpl.logChange("networkName", "Default(" + str + ")");
            }
        }

        @Override // com.android.systemui.log.table.Diffable
        public final void logFull(TableLogBuffer.TableRowLoggerImpl tableRowLoggerImpl) {
            tableRowLoggerImpl.logChange("networkName", "Default(" + this.name + ")");
        }

        public final String toString() {
            return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(new StringBuilder("Default(name="), this.name, ")");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class IntentDerived implements NetworkNameModel {
        public final String name;

        public IntentDerived(String str) {
            this.name = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof IntentDerived)) {
                return false;
            }
            if (Intrinsics.areEqual(this.name, ((IntentDerived) obj).name)) {
                return true;
            }
            return false;
        }

        @Override // com.android.systemui.statusbar.pipeline.mobile.data.model.NetworkNameModel
        public final String getName() {
            return this.name;
        }

        public final int hashCode() {
            return this.name.hashCode();
        }

        @Override // com.android.systemui.log.table.Diffable
        public final void logDiffs(Diffable diffable, TableLogBuffer.TableRowLoggerImpl tableRowLoggerImpl) {
            NetworkNameModel networkNameModel = (NetworkNameModel) diffable;
            boolean z = networkNameModel instanceof IntentDerived;
            String str = this.name;
            if (!z || !Intrinsics.areEqual(networkNameModel.getName(), str)) {
                tableRowLoggerImpl.logChange("networkName", "IntentDerived(" + str + ")");
            }
        }

        @Override // com.android.systemui.log.table.Diffable
        public final void logFull(TableLogBuffer.TableRowLoggerImpl tableRowLoggerImpl) {
            tableRowLoggerImpl.logChange("networkName", "IntentDerived(" + this.name + ")");
        }

        public final String toString() {
            return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(new StringBuilder("IntentDerived(name="), this.name, ")");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SimDerived implements NetworkNameModel {
        public final String name;

        public SimDerived(String str) {
            this.name = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SimDerived)) {
                return false;
            }
            if (Intrinsics.areEqual(this.name, ((SimDerived) obj).name)) {
                return true;
            }
            return false;
        }

        @Override // com.android.systemui.statusbar.pipeline.mobile.data.model.NetworkNameModel
        public final String getName() {
            return this.name;
        }

        public final int hashCode() {
            return this.name.hashCode();
        }

        @Override // com.android.systemui.log.table.Diffable
        public final void logDiffs(Diffable diffable, TableLogBuffer.TableRowLoggerImpl tableRowLoggerImpl) {
            NetworkNameModel networkNameModel = (NetworkNameModel) diffable;
            boolean z = networkNameModel instanceof SimDerived;
            String str = this.name;
            if (!z || !Intrinsics.areEqual(networkNameModel.getName(), str)) {
                tableRowLoggerImpl.logChange("networkName", "SimDerived(" + str + ")");
            }
        }

        @Override // com.android.systemui.log.table.Diffable
        public final void logFull(TableLogBuffer.TableRowLoggerImpl tableRowLoggerImpl) {
            tableRowLoggerImpl.logChange("networkName", "SimDerived(" + this.name + ")");
        }

        public final String toString() {
            return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(new StringBuilder("SimDerived(name="), this.name, ")");
        }
    }

    String getName();
}
