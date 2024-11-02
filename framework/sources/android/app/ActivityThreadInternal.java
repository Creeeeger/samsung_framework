package android.app;

import android.content.ComponentCallbacks2;
import java.util.ArrayList;

/* loaded from: classes.dex */
public interface ActivityThreadInternal {
    ArrayList<ComponentCallbacks2> collectComponentCallbacks(boolean z);

    Application getApplication();

    ContextImpl getSystemContext();

    ContextImpl getSystemUiContextNoCreate();

    boolean isInDensityCompatMode();
}
