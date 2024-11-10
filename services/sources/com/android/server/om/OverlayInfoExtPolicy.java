package com.android.server.om;

import android.content.om.SamsungThemeConstants;
import android.content.pm.overlay.OverlayPaths;
import com.android.server.om.OverlayPolicyManager;
import java.util.function.Predicate;

/* loaded from: classes2.dex */
public final class OverlayInfoExtPolicy implements OverlayPolicyManager.OverlayPackagePolicy {
    @Override // com.android.server.om.OverlayPolicyManager.OverlayPackagePolicy
    public boolean retainOverlay(String str, OverlayPaths overlayPaths, String str2, int i) {
        if (!str.startsWith("/data/overlays") || "android".equals(str2) || overlayPaths.getOverlayPaths().contains(str) || overlayPaths.getResourceDirs().contains(str) || SamsungThemeConstants.changeableApps.contains(str2)) {
            return true;
        }
        return overlayPaths.getOverlayPaths().stream().anyMatch(new Predicate() { // from class: com.android.server.om.OverlayInfoExtPolicy$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean startsWith;
                startsWith = ((String) obj).startsWith("/data/overlays/currentstyle");
                return startsWith;
            }
        }) | overlayPaths.getResourceDirs().stream().anyMatch(new Predicate() { // from class: com.android.server.om.OverlayInfoExtPolicy$$ExternalSyntheticLambda1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean startsWith;
                startsWith = ((String) obj).startsWith("/data/overlays/currentstyle");
                return startsWith;
            }
        });
    }
}
