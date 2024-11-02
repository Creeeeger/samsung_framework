package com.samsung.android.lib.galaxyfinder.search.api.search;

import android.text.TextUtils;
import com.samsung.android.lib.galaxyfinder.search.api.search.item.SearchResultItem;
import com.samsung.android.lib.galaxyfinder.search.api.search.item.SimpleSearchResultItem;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SimpleSearchResult extends SearchResult {
    public final String mResultType;

    public SimpleSearchResult(String str) {
        super(str, SimpleSearchResultItem.class);
    }

    @Override // com.samsung.android.lib.galaxyfinder.search.api.search.SearchResult
    public final String[] getItemColumns() {
        return new String[0];
    }

    @Override // com.samsung.android.lib.galaxyfinder.search.api.search.SearchResult
    public final String getResultType() {
        String str = this.mResultType;
        if (TextUtils.isEmpty(str)) {
            return "basic";
        }
        return str;
    }

    @Override // com.samsung.android.lib.galaxyfinder.search.api.search.SearchResult
    public final Object[] transformCursorRaw(SearchResultItem searchResultItem) {
        return new Object[0];
    }

    public SimpleSearchResult(String str, String str2) {
        this(str);
        this.mResultType = str2;
    }

    @Override // com.samsung.android.lib.galaxyfinder.search.api.search.SearchResult
    public final void getResultVersion() {
    }
}
