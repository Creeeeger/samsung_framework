package com.android.systemui.tuner;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.Toast;
import android.widget.Toolbar;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragment;
import androidx.preference.PreferenceManager;
import androidx.preference.PreferenceScreen;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.demomode.DemoModeController;
import com.android.systemui.fragments.FragmentService;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.util.settings.GlobalSettings;
import com.samsung.android.nexus.video.VideoPlayer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class TunerActivity extends Activity implements PreferenceFragment.OnPreferenceStartFragmentCallback, PreferenceFragment.OnPreferenceStartScreenCallback {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final DemoModeController mDemoModeController;
    public final GlobalSettings mGlobalSettings;
    public final TunerService mTunerService;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public static class SubSettingsFragment extends PreferenceFragment {
        public PreferenceScreen mParentScreen;

        @Override // androidx.preference.PreferenceFragment
        public final void onCreatePreferences(String str) {
            this.mParentScreen = (PreferenceScreen) ((PreferenceFragment) getTargetFragment()).mPreferenceManager.mPreferenceScreen.findPreference(str);
            PreferenceManager preferenceManager = this.mPreferenceManager;
            PreferenceScreen preferenceScreen = new PreferenceScreen(preferenceManager.mContext, null);
            preferenceScreen.onAttachedToHierarchy(preferenceManager);
            setPreferenceScreen(preferenceScreen);
            while (this.mParentScreen.getPreferenceCount() > 0) {
                Preference preference = this.mParentScreen.getPreference(0);
                this.mParentScreen.removePreference(preference);
                preferenceScreen.addPreference(preference);
            }
        }

        @Override // android.app.Fragment
        public final void onDestroy() {
            super.onDestroy();
            PreferenceScreen preferenceScreen = this.mPreferenceManager.mPreferenceScreen;
            while (preferenceScreen.getPreferenceCount() > 0) {
                Preference preference = preferenceScreen.getPreference(0);
                preferenceScreen.removePreference(preference);
                this.mParentScreen.addPreference(preference);
            }
        }
    }

    public TunerActivity(DemoModeController demoModeController, TunerService tunerService, GlobalSettings globalSettings) {
        this.mDemoModeController = demoModeController;
        this.mTunerService = tunerService;
        this.mGlobalSettings = globalSettings;
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        if (!getFragmentManager().popBackStackImmediate()) {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        boolean z;
        String str;
        Fragment tunerFragment;
        super.onCreate(bundle);
        setTheme(2132018370);
        String action = getIntent().getAction();
        boolean z2 = true;
        if (action != null && action.equals("com.android.settings.action.DEMO_MODE")) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            str = "Demo mode";
        } else {
            str = "SystemUI tuner";
        }
        Toast.makeText(this, str.concat(" isn't supported on this device"), 0).show();
        finish();
        getWindow().addFlags(VideoPlayer.MEDIA_ERROR_SYSTEM);
        requestWindowFeature(1);
        setContentView(R.layout.tuner_activity);
        Toolbar toolbar = (Toolbar) findViewById(R.id.action_bar);
        if (toolbar != null) {
            setActionBar(toolbar);
        }
        if (getFragmentManager().findFragmentByTag("tuner") == null) {
            String action2 = getIntent().getAction();
            if (action2 == null || !action2.equals("com.android.settings.action.DEMO_MODE")) {
                z2 = false;
            }
            if (z2) {
                tunerFragment = new DemoModeFragment(this.mDemoModeController, this.mGlobalSettings);
            } else {
                tunerFragment = new TunerFragment(this.mTunerService);
            }
            getFragmentManager().beginTransaction().replace(R.id.content_frame, tunerFragment, "tuner").commit();
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        Dependency.destroy(FragmentService.class, new TunerActivity$$ExternalSyntheticLambda0(0));
        Dependency.destroy(DisplayLifecycle.class, new TunerActivity$$ExternalSyntheticLambda0(1));
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
            return true;
        }
        return super.onMenuItemSelected(i, menuItem);
    }
}
