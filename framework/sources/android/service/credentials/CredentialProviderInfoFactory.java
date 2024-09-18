package android.service.credentials;

import android.Manifest;
import android.app.AppGlobals;
import android.app.admin.DevicePolicyManager;
import android.app.admin.PackagePolicy;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.credentials.CredentialProviderInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Slog;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public final class CredentialProviderInfoFactory {
    private static final String ATTR_NAME = "name";
    private static final String TAG = "CredentialProviderInfoFactory";
    private static final String TAG_CAPABILITIES = "capabilities";
    private static final String TAG_CAPABILITY = "capability";
    private static final String TAG_CREDENTIAL_PROVIDER = "credential-provider";

    public static CredentialProviderInfo create(Context context, ComponentName serviceComponent, int userId, boolean isSystemProvider) throws PackageManager.NameNotFoundException {
        return create(context, getServiceInfoOrThrow(serviceComponent, userId), isSystemProvider, false, false, false);
    }

    public static CredentialProviderInfo create(Context context, ServiceInfo serviceInfo, boolean isSystemProvider, boolean disableSystemAppVerificationForTests, boolean isEnabled, boolean isPrimary) throws SecurityException {
        verifyProviderPermission(serviceInfo);
        if (isSystemProvider && !isValidSystemProvider(context, serviceInfo, disableSystemAppVerificationForTests)) {
            Slog.e(TAG, "Provider is not a valid system provider: " + serviceInfo);
            throw new SecurityException("Provider is not a valid system provider: " + serviceInfo);
        }
        return populateMetadata(context, serviceInfo).setSystemProvider(isSystemProvider).setEnabled(isEnabled).setPrimary(isPrimary).build();
    }

    public static CredentialProviderInfo createForTests(ServiceInfo serviceInfo, CharSequence overrideLabel, boolean isSystemProvider, boolean isEnabled, List<String> capabilities) {
        return new CredentialProviderInfo.Builder(serviceInfo).setEnabled(isEnabled).setOverrideLabel(overrideLabel).setSystemProvider(isSystemProvider).addCapabilities(capabilities).build();
    }

    private static void verifyProviderPermission(ServiceInfo serviceInfo) throws SecurityException {
        if (Manifest.permission.BIND_CREDENTIAL_PROVIDER_SERVICE.equals(serviceInfo.permission)) {
        } else {
            throw new SecurityException("Service does not require the expected permission : android.permission.BIND_CREDENTIAL_PROVIDER_SERVICE");
        }
    }

    private static boolean isSystemProviderWithValidPermission(ServiceInfo serviceInfo, Context context) {
        if (context == null) {
            Slog.w(TAG, "Context is null in isSystemProviderWithValidPermission");
            return false;
        }
        return PermissionUtils.hasPermission(context, serviceInfo.packageName, Manifest.permission.PROVIDE_DEFAULT_ENABLED_CREDENTIAL_SERVICE);
    }

    private static boolean isValidSystemProvider(Context context, ServiceInfo serviceInfo, boolean disableSystemAppVerificationForTests) {
        Objects.requireNonNull(context, "context must not be null");
        if (disableSystemAppVerificationForTests) {
            Bundle metadata = serviceInfo.metaData;
            if (metadata == null) {
                Slog.w(TAG, "metadata is null while reading TEST_SYSTEM_PROVIDER_META_DATA_KEY: " + serviceInfo);
                return false;
            }
            return metadata.getBoolean(CredentialProviderService.TEST_SYSTEM_PROVIDER_META_DATA_KEY);
        }
        return isSystemProviderWithValidPermission(serviceInfo, context);
    }

    private static CredentialProviderInfo.Builder populateMetadata(Context context, ServiceInfo serviceInfo) {
        Objects.requireNonNull(context, "context must not be null");
        PackageManager pm = context.getPackageManager();
        CredentialProviderInfo.Builder builder = new CredentialProviderInfo.Builder(serviceInfo);
        Bundle metadata = serviceInfo.metaData;
        if (metadata == null) {
            Slog.w(TAG, "Metadata is null for provider: " + serviceInfo.getComponentName());
            return builder;
        }
        Resources resources = null;
        try {
            resources = pm.getResourcesForApplication(serviceInfo.applicationInfo);
        } catch (PackageManager.NameNotFoundException e) {
            Slog.e(TAG, "Failed to get app resources", e);
        }
        if (resources == null) {
            Slog.w(TAG, "Resources are null for the serviceInfo being processed: " + serviceInfo.getComponentName());
            return builder;
        }
        try {
            return extractXmlMetadata(context, builder, serviceInfo, pm, resources);
        } catch (Exception e2) {
            Slog.e(TAG, "Failed to get XML metadata", e2);
            return builder;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x004b, code lost:            r8.addCapabilities(parseXmlProviderOuterCapabilities(r0, r11));     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0048, code lost:            if (r4 == null) goto L25;     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.credentials.CredentialProviderInfo.Builder extractXmlMetadata(android.content.Context r7, android.credentials.CredentialProviderInfo.Builder r8, android.content.pm.ServiceInfo r9, android.content.pm.PackageManager r10, android.content.res.Resources r11) {
        /*
            java.lang.String r0 = "android.credentials.provider"
            android.content.res.XmlResourceParser r0 = r9.loadXmlMetaData(r10, r0)
            if (r0 != 0) goto La
            return r8
        La:
            r1 = 0
        Lb:
            r2 = 1
            java.lang.String r3 = "CredentialProviderInfoFactory"
            if (r1 == r2) goto L19
            r2 = 2
            if (r1 == r2) goto L19
            int r2 = r0.next()     // Catch: java.lang.Throwable -> L61
            r1 = r2
            goto Lb
        L19:
            java.lang.String r2 = "credential-provider"
            java.lang.String r4 = r0.getName()     // Catch: java.lang.Throwable -> L61
            boolean r2 = r2.equals(r4)     // Catch: java.lang.Throwable -> L61
            if (r2 == 0) goto L5b
            android.util.AttributeSet r2 = android.util.Xml.asAttributeSet(r0)     // Catch: java.lang.Throwable -> L61
            r4 = 0
            int[] r5 = com.android.internal.R.styleable.CredentialProvider     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            android.content.res.TypedArray r5 = r11.obtainAttributes(r2, r5)     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            r4 = r5
            r5 = 0
            java.lang.String r5 = r4.getString(r5)     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            r8.setSettingsSubtitle(r5)     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L42
            if (r4 == 0) goto L4b
        L3c:
            r4.recycle()     // Catch: java.lang.Throwable -> L61 java.lang.Throwable -> L61
            goto L4b
        L40:
            r5 = move-exception
            goto L54
        L42:
            r5 = move-exception
            java.lang.String r6 = "Failed to get XML attr"
            android.util.Slog.e(r3, r6, r5)     // Catch: java.lang.Throwable -> L40
            if (r4 == 0) goto L4b
            goto L3c
        L4b:
            java.util.Set r5 = parseXmlProviderOuterCapabilities(r0, r11)     // Catch: java.lang.Throwable -> L61 java.lang.Throwable -> L61
            r8.addCapabilities(r5)     // Catch: java.lang.Throwable -> L61 java.lang.Throwable -> L61
            goto L60
        L54:
            if (r4 == 0) goto L59
            r4.recycle()     // Catch: java.lang.Throwable -> L61 java.lang.Throwable -> L61
        L59:
            throw r5     // Catch: java.lang.Throwable -> L61 java.lang.Throwable -> L61
        L5b:
            java.lang.String r2 = "Meta-data does not start with credential-provider-service tag"
            android.util.Slog.w(r3, r2)     // Catch: java.lang.Throwable -> L61 java.lang.Throwable -> L61
        L60:
            goto L67
        L61:
            r1 = move-exception
            java.lang.String r2 = "Error parsing credential provider service meta-data"
            android.util.Slog.e(r3, r2, r1)
        L67:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: android.service.credentials.CredentialProviderInfoFactory.extractXmlMetadata(android.content.Context, android.credentials.CredentialProviderInfo$Builder, android.content.pm.ServiceInfo, android.content.pm.PackageManager, android.content.res.Resources):android.credentials.CredentialProviderInfo$Builder");
    }

    private static Set<String> parseXmlProviderOuterCapabilities(XmlPullParser parser, Resources resources) throws IOException, XmlPullParserException {
        Set<String> capabilities = new HashSet<>();
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type == 1 || (type == 3 && parser.getDepth() <= outerDepth)) {
                break;
            }
            if (type != 3 && type != 4 && TAG_CAPABILITIES.equals(parser.getName())) {
                capabilities.addAll(parseXmlProviderInnerCapabilities(parser, resources));
            }
        }
        return capabilities;
    }

    private static List<String> parseXmlProviderInnerCapabilities(XmlPullParser parser, Resources resources) throws IOException, XmlPullParserException {
        String name;
        List<String> capabilities = new ArrayList<>();
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type == 1 || (type == 3 && parser.getDepth() <= outerDepth)) {
                break;
            }
            if (type != 3 && type != 4 && "capability".equals(parser.getName()) && (name = parser.getAttributeValue(null, "name")) != null && !TextUtils.isEmpty(name)) {
                capabilities.add(name);
            }
        }
        return capabilities;
    }

    private static ServiceInfo getServiceInfoOrThrow(ComponentName serviceComponent, int userId) throws PackageManager.NameNotFoundException {
        try {
            ServiceInfo si = AppGlobals.getPackageManager().getServiceInfo(serviceComponent, 128L, userId);
            if (si != null) {
                return si;
            }
        } catch (RemoteException e) {
            Slog.e(TAG, "Unable to get serviceInfo", e);
        }
        throw new PackageManager.NameNotFoundException(serviceComponent.toString());
    }

    private static List<ServiceInfo> getAvailableSystemServiceInfos(Context context, int userId, boolean disableSystemAppVerificationForTests) {
        Objects.requireNonNull(context, "context must not be null");
        List<ServiceInfo> services = new ArrayList<>();
        List<ResolveInfo> resolveInfos = new ArrayList<>();
        resolveInfos.addAll(context.getPackageManager().queryIntentServicesAsUser(new Intent(CredentialProviderService.SYSTEM_SERVICE_INTERFACE), PackageManager.ResolveInfoFlags.of(128L), userId));
        for (ResolveInfo resolveInfo : resolveInfos) {
            ServiceInfo serviceInfo = resolveInfo.serviceInfo;
            if (disableSystemAppVerificationForTests) {
                if (serviceInfo != null) {
                    services.add(serviceInfo);
                }
            } else {
                try {
                    ApplicationInfo appInfo = context.getPackageManager().getApplicationInfo(serviceInfo.packageName, PackageManager.ApplicationInfoFlags.of(1048576L));
                    if (appInfo != null && serviceInfo != null) {
                        services.add(serviceInfo);
                    }
                } catch (PackageManager.NameNotFoundException | SecurityException e) {
                    Slog.e(TAG, "Error getting info for " + serviceInfo, e);
                }
            }
        }
        return services;
    }

    public static List<CredentialProviderInfo> getAvailableSystemServices(Context context, int userId, boolean disableSystemAppVerificationForTests, Set<ComponentName> enabledServices) {
        Objects.requireNonNull(context, "context must not be null");
        List<CredentialProviderInfo> providerInfos = new ArrayList<>();
        for (ServiceInfo si : getAvailableSystemServiceInfos(context, userId, disableSystemAppVerificationForTests)) {
            try {
                CredentialProviderInfo cpi = create(context, si, true, disableSystemAppVerificationForTests, enabledServices.contains(si.getComponentName()), false);
                if (!cpi.isSystemProvider()) {
                    Slog.e(TAG, "Non system provider was in system provider list.");
                } else {
                    providerInfos.add(cpi);
                }
            } catch (SecurityException e) {
                Slog.e(TAG, "Failed to create CredentialProviderInfo: " + e);
            }
        }
        return providerInfos;
    }

    private static PackagePolicy getDeviceManagerPolicy(Context context, int userId) {
        Context newContext = context.createContextAsUser(UserHandle.of(userId), 0);
        try {
            DevicePolicyManager dpm = (DevicePolicyManager) newContext.getSystemService(DevicePolicyManager.class);
            PackagePolicy pp = dpm.getCredentialManagerPolicy();
            return pp;
        } catch (SecurityException e) {
            Slog.e(TAG, "Failed to get device policy: " + e);
            return null;
        }
    }

    public static List<CredentialProviderInfo> getCredentialProviderServices(Context context, int userId, int providerFilter, Set<ComponentName> enabledServices, Set<String> primaryServices) {
        Objects.requireNonNull(context, "context must not be null");
        PackagePolicy pp = getDeviceManagerPolicy(context, userId);
        ProviderGenerator generator = new ProviderGenerator(context, pp, false, providerFilter);
        generator.addUserProviders(getUserProviders(context, userId, false, enabledServices, primaryServices));
        generator.addSystemProviders(getAvailableSystemServices(context, userId, false, enabledServices));
        return generator.getProviders();
    }

    public static List<CredentialProviderInfo> getCredentialProviderServicesForTesting(Context context, int userId, int providerFilter, Set<ComponentName> enabledServices, Set<String> primaryServices) {
        Objects.requireNonNull(context, "context must not be null");
        PackagePolicy pp = getDeviceManagerPolicy(context, userId);
        ProviderGenerator generator = new ProviderGenerator(context, pp, true, providerFilter);
        generator.addUserProviders(getUserProviders(context, userId, true, enabledServices, primaryServices));
        generator.addSystemProviders(getAvailableSystemServices(context, userId, true, enabledServices));
        return generator.getProviders();
    }

    /* loaded from: classes3.dex */
    private static class ProviderGenerator {
        private final Context mContext;
        private final boolean mDisableSystemAppVerificationForTests;
        private final PackagePolicy mPp;
        private final int mProviderFilter;
        private final Map<String, CredentialProviderInfo> mServices = new HashMap();

        ProviderGenerator(Context context, PackagePolicy pp, boolean disableSystemAppVerificationForTests, int providerFilter) {
            this.mContext = context;
            this.mPp = pp;
            this.mDisableSystemAppVerificationForTests = disableSystemAppVerificationForTests;
            this.mProviderFilter = providerFilter;
        }

        private boolean isPackageAllowed(boolean isSystemProvider, String packageName) {
            PackagePolicy packagePolicy = this.mPp;
            if (packagePolicy == null) {
                return true;
            }
            if (isSystemProvider) {
                return packagePolicy.getPolicyType() == 2;
            }
            return packagePolicy.isPackageAllowed(packageName, new HashSet());
        }

        public List<CredentialProviderInfo> getProviders() {
            return new ArrayList(this.mServices.values());
        }

        public void addUserProviders(List<CredentialProviderInfo> providers) {
            for (CredentialProviderInfo cpi : providers) {
                if (!cpi.isSystemProvider()) {
                    addProvider(cpi);
                }
            }
        }

        public void addSystemProviders(List<CredentialProviderInfo> providers) {
            for (CredentialProviderInfo cpi : providers) {
                if (cpi.isSystemProvider()) {
                    addProvider(cpi);
                }
            }
        }

        private boolean isProviderAllowedWithFilter(CredentialProviderInfo cpi) {
            if (this.mProviderFilter == 0) {
                return true;
            }
            return cpi.isSystemProvider() ? this.mProviderFilter == 1 : this.mProviderFilter == 2;
        }

        private void addProvider(CredentialProviderInfo cpi) {
            String componentNameString = cpi.getServiceInfo().getComponentName().flattenToString();
            if (!isProviderAllowedWithFilter(cpi) || !isPackageAllowed(cpi.isSystemProvider(), cpi.getServiceInfo().packageName)) {
                return;
            }
            this.mServices.put(componentNameString, cpi);
        }
    }

    private static List<CredentialProviderInfo> getUserProviders(Context context, int userId, boolean disableSystemAppVerificationForTests, Set<ComponentName> enabledServices, Set<String> primaryServices) {
        List<CredentialProviderInfo> services = new ArrayList<>();
        List<ResolveInfo> resolveInfos = context.getPackageManager().queryIntentServicesAsUser(new Intent(CredentialProviderService.SERVICE_INTERFACE), PackageManager.ResolveInfoFlags.of(128L), userId);
        for (ResolveInfo resolveInfo : resolveInfos) {
            ServiceInfo serviceInfo = resolveInfo.serviceInfo;
            if (serviceInfo == null) {
                Slog.d(TAG, "No serviceInfo found for resolveInfo, so skipping provider");
            } else {
                try {
                    try {
                        try {
                            CredentialProviderInfo cpi = create(context, serviceInfo, false, disableSystemAppVerificationForTests, enabledServices.contains(serviceInfo.getComponentName()), primaryServices.contains(serviceInfo.getComponentName().flattenToString()));
                            if (!cpi.isSystemProvider()) {
                                services.add(cpi);
                            }
                        } catch (Exception e) {
                            e = e;
                            Slog.e(TAG, "Error getting info for " + serviceInfo, e);
                        }
                    } catch (Exception e2) {
                        e = e2;
                        Slog.e(TAG, "Error getting info for " + serviceInfo, e);
                    }
                } catch (Exception e3) {
                    e = e3;
                }
            }
        }
        return services;
    }
}
