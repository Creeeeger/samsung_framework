package com.samsung.android.lib.galaxyfinder.search.api.search.item;

import android.net.Uri;
import com.samsung.android.lib.galaxyfinder.search.api.payload.IntentResultItemPayload;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SimpleSearchResultItem extends SearchResultItem {
    public final String mGroup;

    public SimpleSearchResultItem(String str, Uri uri, String str2, String str3, String str4, IntentResultItemPayload intentResultItemPayload) {
        super(str, uri, str2, str3, intentResultItemPayload);
        this.mGroup = str4;
    }

    @Override // com.samsung.android.lib.galaxyfinder.search.api.search.item.SearchResultItem
    public final String getGroup() {
        return this.mGroup;
    }
}
