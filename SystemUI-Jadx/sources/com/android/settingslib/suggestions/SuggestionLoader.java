package com.android.settingslib.suggestions;

import android.content.Context;
import android.util.Log;
import com.android.settingslib.utils.AsyncLoader;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SuggestionLoader extends AsyncLoader {
    public final SuggestionController mSuggestionController;

    public SuggestionLoader(Context context, SuggestionController suggestionController) {
        super(context);
        this.mSuggestionController = suggestionController;
    }

    @Override // android.content.AsyncTaskLoader
    public final Object loadInBackground() {
        List suggestions = this.mSuggestionController.getSuggestions();
        if (suggestions == null) {
            Log.d("SuggestionLoader", "data is null");
        } else {
            Log.d("SuggestionLoader", "data size " + suggestions.size());
        }
        return suggestions;
    }

    @Override // com.android.settingslib.utils.AsyncLoader
    public final /* bridge */ /* synthetic */ void onDiscardResult(Object obj) {
    }
}
