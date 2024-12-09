package com.sec.internal.ims.servicemodules.options;

import android.accounts.AbstractAccountAuthenticator;
import android.accounts.Account;
import android.accounts.AccountAuthenticatorResponse;
import android.accounts.NetworkErrorException;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;

/* loaded from: classes.dex */
public class AccountService extends Service {
    private static final String TAG = AccountService.class.getSimpleName();
    private Authenticator mAuthenticator;

    @Override // android.app.Service
    public void onCreate() {
        Log.i(TAG, "Service created");
        this.mAuthenticator = new Authenticator(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        Log.i(TAG, "Service destroyed");
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mAuthenticator.getIBinder();
    }

    public static class Authenticator extends AbstractAccountAuthenticator {
        @Override // android.accounts.AbstractAccountAuthenticator
        public Bundle addAccount(AccountAuthenticatorResponse accountAuthenticatorResponse, String str, String str2, String[] strArr, Bundle bundle) throws NetworkErrorException {
            return null;
        }

        @Override // android.accounts.AbstractAccountAuthenticator
        public Bundle confirmCredentials(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, Bundle bundle) throws NetworkErrorException {
            return null;
        }

        public Authenticator(Context context) {
            super(context);
        }

        @Override // android.accounts.AbstractAccountAuthenticator
        public Bundle editProperties(AccountAuthenticatorResponse accountAuthenticatorResponse, String str) {
            throw new UnsupportedOperationException();
        }

        @Override // android.accounts.AbstractAccountAuthenticator
        public Bundle getAuthToken(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String str, Bundle bundle) throws NetworkErrorException {
            throw new UnsupportedOperationException();
        }

        @Override // android.accounts.AbstractAccountAuthenticator
        public String getAuthTokenLabel(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // android.accounts.AbstractAccountAuthenticator
        public Bundle updateCredentials(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String str, Bundle bundle) throws NetworkErrorException {
            throw new UnsupportedOperationException();
        }

        @Override // android.accounts.AbstractAccountAuthenticator
        public Bundle hasFeatures(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String[] strArr) throws NetworkErrorException {
            throw new UnsupportedOperationException();
        }
    }
}
