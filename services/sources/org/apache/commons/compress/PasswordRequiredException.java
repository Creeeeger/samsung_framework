package org.apache.commons.compress;

import com.android.internal.util.jobs.XmlUtils$$ExternalSyntheticOutline0;
import java.io.IOException;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public class PasswordRequiredException extends IOException {
    private static final long serialVersionUID = 1391070005491684483L;

    public PasswordRequiredException(String str) {
        super(XmlUtils$$ExternalSyntheticOutline0.m("Cannot read encrypted content from ", str, " without a password."));
    }
}
