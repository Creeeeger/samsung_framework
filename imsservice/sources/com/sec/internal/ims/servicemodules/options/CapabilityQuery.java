package com.sec.internal.ims.servicemodules.options;

import android.telephony.ims.ImsException;
import android.telephony.ims.stub.RcsCapabilityExchangeImplBase;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.options.Capabilities;
import com.sec.ims.options.CapabilityRefreshType;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.os.PackageUtils;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.servicemodules.presence.PresenceUtil;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.function.Function;

/* loaded from: classes.dex */
public class CapabilityQuery {
    private static final String LOG_TAG = "CapabilityQuery";
    private static final long SHORT_NUMBER_DELAY = 2000;
    private static final int SHORT_NUMBER_LENGTH = 8;
    private CapabilityDiscoveryModule mCapabilityDiscovery;
    private CapabilityExchange mCapabilityExchange;
    private CapabilityUtil mCapabilityUtil;

    CapabilityQuery(CapabilityDiscoveryModule capabilityDiscoveryModule, CapabilityUtil capabilityUtil, CapabilityExchange capabilityExchange) {
        this.mCapabilityDiscovery = capabilityDiscoveryModule;
        this.mCapabilityUtil = capabilityUtil;
        this.mCapabilityExchange = capabilityExchange;
    }

    Capabilities getCapabilities(int i, int i2) {
        IMSLog.s(LOG_TAG, i2, "getCapabilities: Capex list id " + i);
        if (!this.mCapabilityUtil.checkModuleReady(i2)) {
            return null;
        }
        Capabilities capabilities = this.mCapabilityDiscovery.getCapabilitiesCache(i2).get(i);
        if (capabilities != null && capabilities.isExpired(this.mCapabilityUtil.getCapInfoExpiry(capabilities, i2))) {
            IMSLog.i(LOG_TAG, i2, "getCapabilities: " + capabilities.getUri().toStringLimit() + " is expired. refresh it.");
            CapabilityDiscoveryModule capabilityDiscoveryModule = this.mCapabilityDiscovery;
            capabilityDiscoveryModule.sendMessage(capabilityDiscoveryModule.obtainMessage(6, 0, i2, capabilities.getUri()));
        } else {
            IMSLog.i(LOG_TAG, i2, "getCapabilities: No need to refresh. capex [" + ((String) Optional.ofNullable(capabilities).map(new Function() { // from class: com.sec.internal.ims.servicemodules.options.CapabilityQuery$$ExternalSyntheticLambda0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((Capabilities) obj).toString();
                }
            }).orElse("null")) + "]");
        }
        return capabilities;
    }

    Capabilities getCapabilities(String str, CapabilityRefreshType capabilityRefreshType, boolean z, int i, String str2) {
        Capabilities capabilities;
        long j;
        CapabilityRefreshType capabilityRefreshType2 = capabilityRefreshType;
        IMSLog.i(LOG_TAG, i, "getCapabilities: refreshType " + capabilityRefreshType2 + ", lazyQuery: " + z);
        StringBuilder sb = new StringBuilder();
        sb.append("getCapabilities: number ");
        sb.append(str);
        IMSLog.s(LOG_TAG, i, sb.toString());
        this.mCapabilityDiscovery.removeMessages(8);
        if (!this.mCapabilityUtil.checkModuleReady(i)) {
            return null;
        }
        if (SimUtil.getSimMno(i) == Mno.VZW && capabilityRefreshType2 == CapabilityRefreshType.ALWAYS_FORCE_REFRESH && ConfigUtil.isSecDmaPackageInuse(ImsRegistry.getContext(), i) && !PackageUtils.hasPrivilegedPackage(ImsRegistry.getContext(), ImsConstants.Packages.PACKAGE_SEC_MSG)) {
            IMSLog.i(LOG_TAG, i, "getCapabilities: ALWAYS_FORCE_REFRESH query is not supported in D-SM state");
            return null;
        }
        if (!RcsPolicyManager.getRcsStrategy(i).checkCapDiscoveryOption()) {
            Capabilities capabilities2 = new Capabilities();
            capabilities2.addFeature(Capabilities.FEATURE_MMTEL_VIDEO | Capabilities.FEATURE_PRESENCE_DISCOVERY);
            capabilities2.setAvailiable(true);
            return capabilities2;
        }
        String checkNeedParsing = RcsPolicyManager.getRcsStrategy(i).checkNeedParsing(str);
        ImsUri normalizedUri = this.mCapabilityDiscovery.getUriGenerator().getNormalizedUri(checkNeedParsing, true);
        if (normalizedUri == null) {
            Log.i(LOG_TAG, "getCapabilities: uri is null");
            return null;
        }
        if (this.mCapabilityUtil.blockOptionsToOwnUri(normalizedUri, i)) {
            return null;
        }
        if (capabilityRefreshType2 != CapabilityRefreshType.DISABLED) {
            IMSLog.c(LogClass.CDM_GET_CAPA, i + ",GETCAPA," + capabilityRefreshType.ordinal() + "," + z + "," + normalizedUri.toStringLimit());
        }
        if (ImsProfile.isRcsUpProfile(str2) && this.mCapabilityDiscovery.getCapabilityConfig(i).getDefaultDisc() == 2) {
            return copyToOwnCapabilities(normalizedUri, checkNeedParsing);
        }
        Capabilities capabilities3 = this.mCapabilityDiscovery.getCapabilitiesCache(i).get(normalizedUri);
        if (isNeedToRefreshInMsgCtxForResolvingLatching(capabilityRefreshType2, i, normalizedUri)) {
            capabilityRefreshType2 = CapabilityRefreshType.ALWAYS_FORCE_REFRESH;
            Log.d(LOG_TAG, "refreshType changes to ALWAYS_FORCE_REFRESH");
            j = 0;
            capabilities = null;
        } else {
            capabilities = capabilities3;
            j = -1;
        }
        needCapabilityRefresh(capabilities, capabilityRefreshType2, normalizedUri, j, checkNeedParsing.length() <= 8, z, i);
        return capabilities;
    }

    Capabilities getCapabilities(String str, long j, int i, String str2) {
        IMSLog.i(LOG_TAG, i, "getCapabilities: feature " + Capabilities.dumpFeature(j));
        IMSLog.s(LOG_TAG, i, "getCapabilities: number " + str);
        if (!this.mCapabilityUtil.checkModuleReady(i)) {
            return null;
        }
        ImsUri normalizedUri = this.mCapabilityDiscovery.getUriGenerator().getNormalizedUri(str, true);
        if (normalizedUri == null) {
            Log.i(LOG_TAG, "getCapabilities: uri is null");
            return null;
        }
        if (this.mCapabilityUtil.blockOptionsToOwnUri(normalizedUri, i)) {
            return null;
        }
        if (ImsProfile.isRcsUpProfile(str2) && this.mCapabilityDiscovery.getCapabilityConfig(i).getDefaultDisc() == 2) {
            return copyToOwnCapabilities(normalizedUri, str);
        }
        Capabilities capabilities = this.mCapabilityDiscovery.getCapabilitiesCache(i).get(normalizedUri);
        needCapabilityRefresh(capabilities, CapabilityRefreshType.ONLY_IF_NOT_FRESH, normalizedUri, j, false, false, i);
        return capabilities;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    com.sec.ims.options.Capabilities getCapabilities(com.sec.ims.util.ImsUri r11, long r12, int r14, java.lang.String r15) {
        /*
            r10 = this;
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "getCapabilities: feature "
            r2.append(r3)
            java.lang.String r3 = com.sec.ims.options.Capabilities.dumpFeature(r12)
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            java.lang.String r3 = "CapabilityQuery"
            com.sec.internal.log.IMSLog.i(r3, r14, r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = "getCapabilities: uri "
            r2.append(r4)
            r2.append(r11)
            java.lang.String r2 = r2.toString()
            com.sec.internal.log.IMSLog.s(r3, r14, r2)
            com.sec.internal.ims.servicemodules.options.CapabilityUtil r2 = r10.mCapabilityUtil
            boolean r2 = r2.checkModuleReady(r14)
            r4 = 0
            if (r2 == 0) goto Lb6
            if (r11 != 0) goto L3b
            goto Lb6
        L3b:
            com.sec.ims.util.ImsUri$UriType r2 = r11.getUriType()
            com.sec.ims.util.ImsUri$UriType r5 = com.sec.ims.util.ImsUri.UriType.SIP_URI
            if (r2 != r5) goto L4f
            com.sec.internal.ims.servicemodules.options.CapabilityDiscoveryModule r2 = r10.mCapabilityDiscovery
            com.sec.internal.ims.util.UriGenerator r2 = r2.getUriGenerator()
            com.sec.ims.util.ImsUri r1 = r2.normalize(r11)
        L4d:
            r5 = r1
            goto L72
        L4f:
            com.sec.ims.util.ImsUri$UriType r2 = r11.getUriType()
            com.sec.ims.util.ImsUri$UriType r5 = com.sec.ims.util.ImsUri.UriType.TEL_URI
            if (r2 != r5) goto L71
            java.lang.String r2 = com.sec.internal.helper.UriUtil.getMsisdnNumber(r11)
            if (r2 == 0) goto L71
            java.lang.String r5 = "+"
            boolean r5 = r2.startsWith(r5)
            if (r5 != 0) goto L71
            com.sec.internal.ims.servicemodules.options.CapabilityDiscoveryModule r1 = r10.mCapabilityDiscovery
            com.sec.internal.ims.util.UriGenerator r1 = r1.getUriGenerator()
            r5 = 1
            com.sec.ims.util.ImsUri r1 = r1.getNormalizedUri(r2, r5)
            goto L4d
        L71:
            r5 = r11
        L72:
            if (r5 != 0) goto L7a
            java.lang.String r0 = "getCapabilities: normalization failed"
            android.util.Log.i(r3, r0)
            return r4
        L7a:
            com.sec.internal.ims.servicemodules.options.CapabilityUtil r1 = r10.mCapabilityUtil
            boolean r1 = r1.blockOptionsToOwnUri(r5, r14)
            if (r1 == 0) goto L83
            return r4
        L83:
            boolean r1 = com.sec.ims.settings.ImsProfile.isRcsUpProfile(r15)
            if (r1 == 0) goto L9f
            com.sec.internal.ims.servicemodules.options.CapabilityDiscoveryModule r1 = r10.mCapabilityDiscovery
            com.sec.internal.ims.servicemodules.options.CapabilityConfig r1 = r1.getCapabilityConfig(r14)
            int r1 = r1.getDefaultDisc()
            r2 = 2
            if (r1 != r2) goto L9f
            java.lang.String r1 = r5.getMsisdn()
            com.sec.ims.options.Capabilities r0 = r10.copyToOwnCapabilities(r5, r1)
            return r0
        L9f:
            com.sec.internal.ims.servicemodules.options.CapabilityDiscoveryModule r1 = r10.mCapabilityDiscovery
            com.sec.internal.ims.servicemodules.options.CapabilitiesCache r1 = r1.getCapabilitiesCache(r14)
            com.sec.ims.options.Capabilities r9 = r1.get(r5)
            com.sec.ims.options.CapabilityRefreshType r2 = com.sec.ims.options.CapabilityRefreshType.ONLY_IF_NOT_FRESH
            r6 = 0
            r7 = 0
            r0 = r10
            r1 = r9
            r3 = r5
            r4 = r12
            r8 = r14
            r0.needCapabilityRefresh(r1, r2, r3, r4, r6, r7, r8)
            return r9
        Lb6:
            java.lang.String r0 = "getCapabilities: failed"
            android.util.Log.i(r3, r0)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.options.CapabilityQuery.getCapabilities(com.sec.ims.util.ImsUri, long, int, java.lang.String):com.sec.ims.options.Capabilities");
    }

    Capabilities[] getCapabilities(List<ImsUri> list, CapabilityRefreshType capabilityRefreshType, long j, int i, String str, RcsCapabilityExchangeImplBase.SubscribeResponseCallback subscribeResponseCallback) {
        int i2;
        ImsUri imsUri;
        IMnoStrategy iMnoStrategy;
        ArrayList arrayList;
        Capabilities[] capabilitiesArr;
        HashSet hashSet;
        String str2;
        boolean z;
        String str3;
        RcsCapabilityExchangeImplBase.SubscribeResponseCallback subscribeResponseCallback2;
        IMnoStrategy iMnoStrategy2;
        HashSet hashSet2;
        ImsUri normalizedUri;
        String msisdnNumber;
        RcsCapabilityExchangeImplBase.SubscribeResponseCallback subscribeResponseCallback3 = subscribeResponseCallback;
        String str4 = "getCapabilities: refreshType " + capabilityRefreshType + ", feature " + Capabilities.dumpFeature(j) + ", callback : " + subscribeResponseCallback3;
        String str5 = LOG_TAG;
        IMSLog.i(LOG_TAG, i, str4);
        Capabilities[] capabilitiesArr2 = null;
        if (list == null) {
            Log.i(LOG_TAG, "getCapabilities: uris is null.");
            if (subscribeResponseCallback3 != null) {
                try {
                    subscribeResponseCallback3.onCommandError(2);
                } catch (ImsException e) {
                    e.printStackTrace();
                }
            }
            return null;
        }
        IMSLog.s(LOG_TAG, i, "getCapabilities: uris " + list.toString());
        while (list.contains(null)) {
            IMSLog.i(LOG_TAG, i, "remove invalid list elements(null)" + list.toString());
            list.remove((Object) null);
        }
        IMSLog.s(LOG_TAG, i, "getCapabilities: uris " + list.toString());
        if (!this.mCapabilityUtil.checkModuleReady(i)) {
            if (subscribeResponseCallback3 != null) {
                try {
                    subscribeResponseCallback3.onCommandError(9);
                } catch (ImsException e2) {
                    e2.printStackTrace();
                }
            }
            return null;
        }
        HashSet hashSet3 = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        CapabilityConfig capabilityConfig = this.mCapabilityDiscovery.getCapabilityConfig(i);
        if (ImsProfile.isRcsUpProfile(str) && capabilityConfig.getDefaultDisc() == 2) {
            for (ImsUri imsUri2 : list) {
                arrayList2.add(copyToOwnCapabilities(imsUri2, imsUri2.getMsisdn()));
            }
            return (Capabilities[]) arrayList2.toArray(new Capabilities[0]);
        }
        IMnoStrategy rcsStrategy = RcsPolicyManager.getRcsStrategy(i);
        for (ImsUri imsUri3 : list) {
            if (!this.mCapabilityUtil.blockOptionsToOwnUri(imsUri3, i)) {
                Capabilities capabilities = this.mCapabilityDiscovery.getCapabilitiesCache(i).get(imsUri3);
                if (capabilities != null) {
                    arrayList2.add(capabilities);
                }
                if (capabilities != null) {
                    String str6 = str5;
                    if (capabilities.isFeatureAvailable(j)) {
                        arrayList = arrayList2;
                        imsUri = imsUri3;
                        z = true;
                        str3 = "subscribeForCapabilities internalRequestId : ";
                        iMnoStrategy = rcsStrategy;
                        capabilitiesArr = capabilitiesArr2;
                        hashSet = hashSet3;
                        if (rcsStrategy.needRefresh(capabilities, capabilityRefreshType, this.mCapabilityUtil.getCapInfoExpiry(capabilities, i), capabilityConfig.getServiceAvailabilityInfoExpiry(), capabilityConfig.getCapCacheExpiry(), capabilityConfig.getMsgcapvalidity())) {
                            str2 = str6;
                        } else {
                            str2 = str6;
                            IMSLog.i(str2, i, "getCapabilities: No need to refresh. " + capabilities.toString());
                            subscribeResponseCallback2 = subscribeResponseCallback;
                            iMnoStrategy2 = iMnoStrategy;
                            hashSet2 = hashSet;
                            str5 = str2;
                            hashSet3 = hashSet2;
                            rcsStrategy = iMnoStrategy2;
                            subscribeResponseCallback3 = subscribeResponseCallback2;
                            capabilitiesArr2 = capabilitiesArr;
                            arrayList2 = arrayList;
                        }
                    } else {
                        imsUri = imsUri3;
                        str3 = "subscribeForCapabilities internalRequestId : ";
                        iMnoStrategy = rcsStrategy;
                        arrayList = arrayList2;
                        capabilitiesArr = capabilitiesArr2;
                        hashSet = hashSet3;
                        str2 = str6;
                        z = true;
                    }
                } else {
                    imsUri = imsUri3;
                    iMnoStrategy = rcsStrategy;
                    arrayList = arrayList2;
                    capabilitiesArr = capabilitiesArr2;
                    hashSet = hashSet3;
                    str2 = str5;
                    z = true;
                    str3 = "subscribeForCapabilities internalRequestId : ";
                }
                IMSLog.i(str2, i, "getCapabilities: " + imsUri.toStringLimit() + " is expired. refresh it");
                if (imsUri.getUriType() == ImsUri.UriType.SIP_URI) {
                    normalizedUri = this.mCapabilityDiscovery.getUriGenerator().normalize(imsUri);
                } else {
                    ImsUri imsUri4 = imsUri;
                    normalizedUri = (imsUri4.getUriType() != ImsUri.UriType.TEL_URI || (msisdnNumber = UriUtil.getMsisdnNumber(imsUri4)) == null || msisdnNumber.startsWith("+")) ? imsUri4 : this.mCapabilityDiscovery.getUriGenerator().getNormalizedUri(msisdnNumber, z);
                }
                if (normalizedUri == null) {
                    Log.i(str2, "getCapabilities: normalization failed");
                    subscribeResponseCallback3 = subscribeResponseCallback;
                    str5 = str2;
                    capabilitiesArr2 = capabilitiesArr;
                    arrayList2 = arrayList;
                    rcsStrategy = iMnoStrategy;
                    hashSet3 = hashSet;
                } else {
                    iMnoStrategy2 = iMnoStrategy;
                    if (!iMnoStrategy2.boolSetting(RcsPolicySettings.RcsPolicy.ALLOW_LIST_CAPEX)) {
                        hashSet2 = hashSet;
                        subscribeResponseCallback2 = subscribeResponseCallback;
                    } else if (SimUtil.getSimMno(i) == Mno.TMOUS && !ConfigUtil.isJibeAs(i) && capabilityConfig.isDisableInitialScan()) {
                        subscribeResponseCallback2 = subscribeResponseCallback;
                        hashSet2 = hashSet;
                    } else {
                        hashSet2 = hashSet;
                        hashSet2.add(normalizedUri);
                        subscribeResponseCallback2 = subscribeResponseCallback;
                        str5 = str2;
                        hashSet3 = hashSet2;
                        rcsStrategy = iMnoStrategy2;
                        subscribeResponseCallback3 = subscribeResponseCallback2;
                        capabilitiesArr2 = capabilitiesArr;
                        arrayList2 = arrayList;
                    }
                    if (subscribeResponseCallback2 == null) {
                        CapabilityDiscoveryModule capabilityDiscoveryModule = this.mCapabilityDiscovery;
                        capabilityDiscoveryModule.sendMessage(capabilityDiscoveryModule.obtainMessage(6, capabilityRefreshType.ordinal(), i, normalizedUri));
                    } else {
                        int addSubscribeResponseCallback = PresenceUtil.addSubscribeResponseCallback(i, subscribeResponseCallback2);
                        IMSLog.i(str2, i, str3 + addSubscribeResponseCallback);
                        CapabilityDiscoveryModule capabilityDiscoveryModule2 = this.mCapabilityDiscovery;
                        capabilityDiscoveryModule2.sendMessage(capabilityDiscoveryModule2.obtainMessage(54, addSubscribeResponseCallback, i, normalizedUri));
                    }
                    str5 = str2;
                    hashSet3 = hashSet2;
                    rcsStrategy = iMnoStrategy2;
                    subscribeResponseCallback3 = subscribeResponseCallback2;
                    capabilitiesArr2 = capabilitiesArr;
                    arrayList2 = arrayList;
                }
            }
        }
        IMnoStrategy iMnoStrategy3 = rcsStrategy;
        ArrayList arrayList3 = arrayList2;
        Capabilities[] capabilitiesArr3 = capabilitiesArr2;
        HashSet hashSet4 = hashSet3;
        String str7 = str5;
        RcsCapabilityExchangeImplBase.SubscribeResponseCallback subscribeResponseCallback4 = subscribeResponseCallback3;
        if (hashSet4.size() > 1) {
            if (subscribeResponseCallback4 != null) {
                i2 = PresenceUtil.addSubscribeResponseCallback(i, subscribeResponseCallback4);
                IMSLog.i(str7, i, "subscribeForCapabilities internalRequestId : " + i2);
            } else {
                i2 = 0;
            }
            CapabilityDiscoveryModule capabilityDiscoveryModule3 = this.mCapabilityDiscovery;
            capabilityDiscoveryModule3.sendMessage(capabilityDiscoveryModule3.obtainMessage(33, i, i2, hashSet4));
        } else if (hashSet4.size() == 1) {
            if (subscribeResponseCallback4 == null) {
                CapabilityDiscoveryModule capabilityDiscoveryModule4 = this.mCapabilityDiscovery;
                capabilityDiscoveryModule4.sendMessage(capabilityDiscoveryModule4.obtainMessage(6, capabilityRefreshType.ordinal(), i, hashSet4.iterator().next()));
            } else {
                int addSubscribeResponseCallback2 = PresenceUtil.addSubscribeResponseCallback(i, subscribeResponseCallback4);
                IMSLog.i(str7, i, "subscribeForCapabilities internalRequestId : " + addSubscribeResponseCallback2);
                CapabilityDiscoveryModule capabilityDiscoveryModule5 = this.mCapabilityDiscovery;
                capabilityDiscoveryModule5.sendMessage(capabilityDiscoveryModule5.obtainMessage(54, addSubscribeResponseCallback2, i, hashSet4.iterator().next()));
            }
        }
        return (arrayList3.size() == 0 || (iMnoStrategy3.boolSetting(RcsPolicySettings.RcsPolicy.CAPA_SKIP_NOTIFY_FORCE_REFRESH_SYNC) && capabilityRefreshType == CapabilityRefreshType.FORCE_REFRESH_SYNC)) ? capabilitiesArr3 : (Capabilities[]) arrayList3.toArray(new Capabilities[0]);
    }

    Capabilities getCapabilities(ImsUri imsUri, CapabilityRefreshType capabilityRefreshType, int i, String str) {
        ImsUri imsUri2;
        String msisdnNumber;
        ImsUri normalizedUri;
        IMSLog.i(LOG_TAG, i, "getCapabilities: refreshType " + capabilityRefreshType);
        IMSLog.s(LOG_TAG, i, "getCapabilities: uri " + imsUri);
        if (!this.mCapabilityUtil.checkModuleReady(i) || imsUri == null) {
            Log.i(LOG_TAG, "getCapabilities: failed");
            return null;
        }
        if (imsUri.getUriType() == ImsUri.UriType.SIP_URI) {
            normalizedUri = this.mCapabilityDiscovery.getUriGenerator().normalize(imsUri);
        } else if (imsUri.getUriType() == ImsUri.UriType.TEL_URI && (msisdnNumber = UriUtil.getMsisdnNumber(imsUri)) != null && !msisdnNumber.startsWith("+")) {
            normalizedUri = this.mCapabilityDiscovery.getUriGenerator().getNormalizedUri(msisdnNumber, true);
        } else {
            imsUri2 = imsUri;
            if (imsUri2 != null || this.mCapabilityUtil.blockOptionsToOwnUri(imsUri2, i)) {
                return null;
            }
            if (ImsProfile.isRcsUpProfile(str) && this.mCapabilityDiscovery.getCapabilityConfig(i).getDefaultDisc() == 2) {
                return copyToOwnCapabilities(imsUri2, imsUri2.getMsisdn());
            }
            Capabilities capabilities = this.mCapabilityDiscovery.getCapabilitiesCache(i).get(imsUri2);
            needCapabilityRefresh(capabilities, capabilityRefreshType, imsUri2, -1L, false, false, i);
            return capabilities;
        }
        imsUri2 = normalizedUri;
        if (imsUri2 != null) {
        }
        return null;
    }

    Capabilities[] getCapabilitiesByContactId(String str, CapabilityRefreshType capabilityRefreshType, int i, String str2) {
        IMSLog.i(LOG_TAG, i, "getCapabilitiesByContactId: contactId " + str + ", refreshType " + capabilityRefreshType);
        if (!this.mCapabilityUtil.checkModuleReady(i)) {
            return null;
        }
        if ("FORCE_CAPA_POLLING".equals(str)) {
            this.mCapabilityExchange.forcePoll(i);
            return null;
        }
        ArrayList arrayList = new ArrayList();
        List<String> numberlistByContactId = this.mCapabilityDiscovery.getPhonebook().getNumberlistByContactId(str);
        if (numberlistByContactId != null) {
            Iterator<String> it = numberlistByContactId.iterator();
            while (it.hasNext()) {
                ImsUri parse = ImsUri.parse("tel:" + it.next());
                IMSLog.s(LOG_TAG, i, "getCapabilitiesByContactId: contactId " + str + ", teluri " + parse);
                arrayList.add(parse);
            }
        }
        return getCapabilities(arrayList, capabilityRefreshType, Capabilities.FEATURE_OFFLINE_RCS_USER, i, str2, null);
    }

    Capabilities copyToOwnCapabilities(ImsUri imsUri, String str) {
        IMSLog.s(LOG_TAG, "copyToOwnCapabilities: CAPABILITY DISCOVERY MECHANISM is off. Copy to OwnCapabilities");
        Capabilities ownCapabilities = this.mCapabilityDiscovery.getOwnCapabilities();
        if (ownCapabilities != null) {
            long feature = ownCapabilities.getFeature();
            ownCapabilities.setUri(imsUri);
            ownCapabilities.setAvailableFeatures(feature);
            ownCapabilities.setNumber(str);
        }
        return ownCapabilities;
    }

    void needCapabilityRefresh(Capabilities capabilities, CapabilityRefreshType capabilityRefreshType, ImsUri imsUri, long j, boolean z, boolean z2, int i) {
        Capabilities capabilities2;
        if (RcsPolicyManager.getRcsStrategy(i).needRefresh(capabilities, capabilityRefreshType, this.mCapabilityUtil.getCapInfoExpiry(capabilities, i), this.mCapabilityDiscovery.getCapabilityConfig(i).getServiceAvailabilityInfoExpiry(), this.mCapabilityDiscovery.getCapabilityConfig(i).getCapCacheExpiry(), this.mCapabilityDiscovery.getCapabilityConfig(i).getMsgcapvalidity())) {
            IMSLog.i(LOG_TAG, i, "needCapabilityRefresh: true, missing capabilities for " + imsUri.toStringLimit());
            if (!z2) {
                CapabilityDiscoveryModule capabilityDiscoveryModule = this.mCapabilityDiscovery;
                capabilityDiscoveryModule.sendMessage(capabilityDiscoveryModule.obtainMessage(6, capabilityRefreshType.ordinal(), i, imsUri));
                return;
            } else if (z) {
                CapabilityDiscoveryModule capabilityDiscoveryModule2 = this.mCapabilityDiscovery;
                capabilityDiscoveryModule2.sendMessageDelayed(capabilityDiscoveryModule2.obtainMessage(8, capabilityRefreshType.ordinal(), i, imsUri), 2000L);
                return;
            } else {
                CapabilityDiscoveryModule capabilityDiscoveryModule3 = this.mCapabilityDiscovery;
                capabilityDiscoveryModule3.sendMessage(capabilityDiscoveryModule3.obtainMessage(8, capabilityRefreshType.ordinal(), i, imsUri));
                return;
            }
        }
        if (j >= 0) {
            capabilities2 = capabilities;
            if (capabilities2 == null || !capabilities.isAvailable() || !capabilities2.isFeatureAvailable(j)) {
                IMSLog.i(LOG_TAG, i, "needCapabilityRefresh: true, missing features for " + imsUri.toStringLimit());
                CapabilityDiscoveryModule capabilityDiscoveryModule4 = this.mCapabilityDiscovery;
                capabilityDiscoveryModule4.sendMessage(capabilityDiscoveryModule4.obtainMessage(6, capabilityRefreshType.ordinal(), i, imsUri));
                return;
            }
        } else {
            capabilities2 = capabilities;
        }
        if (capabilities2 != null) {
            IMSLog.i(LOG_TAG, i, "needCapabilityRefresh: false, capex is " + capabilities.toString());
            if (capabilityRefreshType != CapabilityRefreshType.DISABLED) {
                IMSLog.c(LogClass.CDM_NO_REFRESH, i + ",NOREF," + capabilities.getFeature() + "," + capabilities.getAvailableFeatures());
                return;
            }
            return;
        }
        IMSLog.i(LOG_TAG, i, "needCapabilityRefresh: false, capex is null for " + imsUri.toStringLimit());
        if (capabilityRefreshType != CapabilityRefreshType.DISABLED) {
            IMSLog.c(LogClass.CDM_NO_REFRESH, i + ",NOREF,NOCAP");
        }
    }

    Capabilities getOwnCapabilitiesBase(int i, Capabilities capabilities) {
        IMSLog.i(LOG_TAG, i, "getOwnCapabilitiesBase:");
        Capabilities capabilities2 = null;
        if (!this.mCapabilityUtil.checkModuleReady(i)) {
            try {
                capabilities2 = capabilities.clone();
            } catch (CloneNotSupportedException e) {
                e.printStackTrace();
            }
            if (capabilities2 != null) {
                IMSLog.i(LOG_TAG, i, "getOwnCapabilitiesBase: module is not ready, " + Capabilities.dumpFeature(capabilities2.getFeature()));
            }
            return capabilities2;
        }
        this.mCapabilityDiscovery.updateOwnCapabilities(i);
        try {
            capabilities2 = capabilities.clone();
        } catch (CloneNotSupportedException e2) {
            e2.printStackTrace();
        }
        if (capabilities2 != null) {
            IMSLog.i(LOG_TAG, i, "getOwnCapabilitiesBase: " + Capabilities.dumpFeature(capabilities2.getFeature()));
        }
        return capabilities2;
    }

    Capabilities getOwnCapabilities(int i, int i2, Map<Integer, ImsRegistration> map, IRegistrationManager iRegistrationManager, int i3, boolean z, String str, Capabilities capabilities) {
        Capabilities capabilities2;
        if (!this.mCapabilityUtil.checkModuleReady(i)) {
            return null;
        }
        if (!RcsUtils.DualRcs.isDualRcsReg() && i2 != i) {
            IMSLog.s(LOG_TAG, i, "getOwnCapabilities: mAvailablePhoneId = ! phoneId");
            return null;
        }
        this.mCapabilityDiscovery.updateOwnCapabilities(i);
        Capabilities capabilities3 = new Capabilities();
        try {
            capabilities2 = capabilities.clone();
        } catch (CloneNotSupportedException e) {
            e = e;
        }
        try {
            Set<String> filterServicesWithReg = this.mCapabilityUtil.filterServicesWithReg(map, iRegistrationManager, i3, i);
            if (filterServicesWithReg != null) {
                long filterFeaturesWithCallState = this.mCapabilityUtil.filterFeaturesWithCallState(this.mCapabilityUtil.filterFeaturesWithService(capabilities2.getFeature(), filterServicesWithReg, i3, i), z, str);
                capabilities2.setFeatures(filterFeaturesWithCallState);
                capabilities2.setAvailableFeatures(filterFeaturesWithCallState);
            }
        } catch (CloneNotSupportedException e2) {
            e = e2;
            capabilities3 = capabilities2;
            e.printStackTrace();
            capabilities2 = capabilities3;
            IMSLog.i(LOG_TAG, i, "getOwnCapabilities: feature=" + Long.toHexString(capabilities2.getFeature()) + ", detail=" + Capabilities.dumpFeature(capabilities2.getFeature()));
            return capabilities2;
        }
        IMSLog.i(LOG_TAG, i, "getOwnCapabilities: feature=" + Long.toHexString(capabilities2.getFeature()) + ", detail=" + Capabilities.dumpFeature(capabilities2.getFeature()));
        return capabilities2;
    }

    Capabilities[] getAllCapabilities(int i) {
        IMSLog.s(LOG_TAG, i, "getAllCapabilities:");
        if (!this.mCapabilityDiscovery.isRunning()) {
            Log.i(LOG_TAG, "getAllCapabilities: CapabilityDiscoveryModule is disabled");
            return null;
        }
        return (Capabilities[]) this.mCapabilityDiscovery.getCapabilitiesCache(i).getAllCapabilities().toArray(new Capabilities[0]);
    }

    private boolean isNeedToRefreshInMsgCtxForResolvingLatching(CapabilityRefreshType capabilityRefreshType, int i, ImsUri imsUri) {
        return capabilityRefreshType == CapabilityRefreshType.ONLY_IF_NOT_FRESH_IN_MSG_CTX && ImsRegistry.getBoolean(i, GlobalSettingsConstants.RCS.USE_XMS_RECEIVER_FOR_RESOLVING_LATCHING, false) && this.mCapabilityDiscovery.getImModule().getLatchingProcessor().isExistInLatchingList(imsUri, i) && this.mCapabilityDiscovery.getImModule().getLatchingProcessor().checkTimestampInOptionsList(imsUri, System.currentTimeMillis(), i);
    }
}
