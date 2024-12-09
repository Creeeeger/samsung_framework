package com.sec.internal.ims.util;

import android.content.Context;
import android.telephony.SubscriptionManager;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.ImsUri;
import com.sec.ims.util.NameAddr;
import com.sec.internal.constants.Mno;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.helper.os.TelephonyManagerWrapper;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.log.IMSLog;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class UriGeneratorFactory {
    private static final String LOG_TAG = "UriGeneratorFactory";
    static volatile UriGeneratorFactory sUriFactory;
    private ITelephonyManager mTelephonyManager;
    private Map<UriGenerator.URIServiceType, ImsUri[]> mPrimaryImpuMap = new ConcurrentHashMap();
    private ImsUri DEFAULT_URI = ImsUri.parse("sip:default@default");
    private Map<UriGenerator.URIServiceType, Map<ImsUri, UriGenerator>> mUriGenerators = new ConcurrentHashMap();

    public static UriGeneratorFactory getInstance() {
        if (sUriFactory == null) {
            Context context = ImsRegistry.getContext();
            synchronized (UriGeneratorFactory.class) {
                if (sUriFactory == null) {
                    sUriFactory = new UriGeneratorFactory(context);
                }
            }
        }
        return sUriFactory;
    }

    public UriGeneratorFactory(Context context) {
        ITelephonyManager telephonyManagerWrapper = TelephonyManagerWrapper.getInstance(context);
        this.mTelephonyManager = telephonyManagerWrapper;
        int phoneCount = telephonyManagerWrapper.getPhoneCount();
        for (UriGenerator.URIServiceType uRIServiceType : UriGenerator.URIServiceType.values()) {
            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
            concurrentHashMap.put(this.DEFAULT_URI, new UriGeneratorImpl(ImsUri.UriType.SIP_URI, "us", "example.com", this.mTelephonyManager, SubscriptionManager.getActiveDataSubscriptionId(), SimUtil.getActiveDataPhoneId()));
            this.mUriGenerators.put(uRIServiceType, concurrentHashMap);
            ImsUri[] imsUriArr = new ImsUri[phoneCount];
            Arrays.fill(imsUriArr, (Object) null);
            this.mPrimaryImpuMap.put(uRIServiceType, imsUriArr);
        }
    }

    public UriGenerator create(ImsRegistration imsRegistration, ImsUri.UriType uriType) {
        UriGenerator uriGeneratorImpl;
        ImsProfile imsProfile = imsRegistration.getImsProfile();
        Mno fromName = Mno.fromName(imsProfile.getMnoName());
        String countryCode = fromName != null ? fromName.getCountryCode() : "";
        int activeDataSubscriptionId = SubscriptionManager.getActiveDataSubscriptionId();
        if (fromName != null && fromName == Mno.VZW) {
            return new VzwUriGenerator(uriType, imsRegistration.getDomain(), this.mTelephonyManager, activeDataSubscriptionId, imsRegistration.getPhoneId(), imsProfile);
        }
        if ("us".equalsIgnoreCase(countryCode)) {
            return new UriGeneratorUs(uriType, imsRegistration.getDomain(), this.mTelephonyManager, activeDataSubscriptionId, imsRegistration.getPhoneId(), imsProfile);
        }
        if ("cn".equalsIgnoreCase(countryCode)) {
            uriGeneratorImpl = new UriGeneratorChn(uriType, countryCode, imsRegistration.getDomain(), this.mTelephonyManager, activeDataSubscriptionId, imsRegistration.getPhoneId(), imsProfile);
        } else if (fromName != null && (fromName == Mno.TMOBILE || fromName == Mno.EE || fromName == Mno.EE_ESN || fromName == Mno.TMOBILE_PL)) {
            uriGeneratorImpl = new UriGeneratorDT(uriType, countryCode, imsRegistration.getDomain(), getDerivedDomainFromImsi(imsRegistration.getImsProfile().getMcc(), imsRegistration.getImsProfile().getMnc()), this.mTelephonyManager, activeDataSubscriptionId, imsRegistration.getPhoneId(), imsProfile);
        } else {
            if (fromName != null && "kr".equalsIgnoreCase(countryCode)) {
                UriGeneratorKr uriGeneratorKr = new UriGeneratorKr(uriType, countryCode, imsRegistration.getDomain(), this.mTelephonyManager, activeDataSubscriptionId, imsRegistration.getPhoneId(), imsProfile);
                uriGeneratorKr.setMnoName(fromName.getName());
                return uriGeneratorKr;
            }
            if (fromName != null && fromName == Mno.RJIL) {
                uriGeneratorImpl = new UriGeneratorRjil(uriType, countryCode, imsRegistration.getDomain(), this.mTelephonyManager, activeDataSubscriptionId, imsRegistration.getPhoneId(), imsProfile);
            } else {
                uriGeneratorImpl = new UriGeneratorImpl(uriType, countryCode, imsRegistration.getDomain(), this.mTelephonyManager, activeDataSubscriptionId, imsRegistration.getPhoneId(), imsProfile);
            }
        }
        return uriGeneratorImpl;
    }

    private String getDerivedDomainFromImsi(String str, String str2) {
        Log.d(LOG_TAG, "getImsiBasedDomain: mcc=" + str + " mnc=" + str2);
        return (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) ? "" : String.format(Locale.US, "ims.mnc%03d.mcc%03d.3gppnetwork.org", Integer.valueOf(Integer.parseInt(str2)), Integer.valueOf(Integer.parseInt(str)));
    }

    public void add(ImsUri imsUri, UriGenerator uriGenerator, UriGenerator.URIServiceType uRIServiceType) {
        if (imsUri == null) {
            return;
        }
        int phoneId = uriGenerator.getPhoneId();
        ImsUri[] imsUriArr = this.mPrimaryImpuMap.get(uRIServiceType);
        Objects.requireNonNull(imsUriArr);
        if (imsUriArr[phoneId] == null) {
            this.mPrimaryImpuMap.get(uRIServiceType)[phoneId] = imsUri;
        }
        this.mUriGenerators.get(uRIServiceType).put(imsUri, uriGenerator);
    }

    public void removeByPhoneId(int i, UriGenerator.URIServiceType uRIServiceType) {
        ImsUri[] imsUriArr = this.mPrimaryImpuMap.get(uRIServiceType);
        Objects.requireNonNull(imsUriArr);
        imsUriArr[i] = null;
        for (ImsUri imsUri : this.mUriGenerators.get(uRIServiceType).keySet()) {
            if (!this.DEFAULT_URI.equals(imsUri) && this.mUriGenerators.get(uRIServiceType).get(imsUri).getPhoneId() == i) {
                this.mUriGenerators.get(uRIServiceType).remove(imsUri);
            }
        }
    }

    public boolean contains(ImsUri imsUri, UriGenerator.URIServiceType uRIServiceType) {
        return this.mUriGenerators.get(uRIServiceType).containsKey(imsUri);
    }

    public UriGenerator get(UriGenerator.URIServiceType uRIServiceType) {
        int activeDataPhoneId = SimUtil.getActiveDataPhoneId();
        ImsUri[] imsUriArr = this.mPrimaryImpuMap.get(uRIServiceType);
        Objects.requireNonNull(imsUriArr);
        UriGenerator uriGenerator = imsUriArr[activeDataPhoneId] != null ? this.mUriGenerators.get(uRIServiceType).get(this.mPrimaryImpuMap.get(uRIServiceType)[activeDataPhoneId]) : null;
        return uriGenerator == null ? this.mUriGenerators.get(uRIServiceType).get(this.DEFAULT_URI) : uriGenerator;
    }

    public UriGenerator get(int i, UriGenerator.URIServiceType uRIServiceType) {
        ImsUri[] imsUriArr = this.mPrimaryImpuMap.get(uRIServiceType);
        Objects.requireNonNull(imsUriArr);
        UriGenerator uriGenerator = imsUriArr[i] != null ? this.mUriGenerators.get(uRIServiceType).get(this.mPrimaryImpuMap.get(uRIServiceType)[i]) : null;
        return uriGenerator == null ? this.mUriGenerators.get(uRIServiceType).get(this.DEFAULT_URI) : uriGenerator;
    }

    public UriGenerator get(ImsUri imsUri, UriGenerator.URIServiceType uRIServiceType) {
        if (imsUri == null) {
            return get(uRIServiceType);
        }
        UriGenerator uriGenerator = this.mUriGenerators.get(uRIServiceType).get(imsUri);
        if (uriGenerator != null) {
            return uriGenerator;
        }
        Log.d(LOG_TAG, "get: UriGenerator not found for uri=" + IMSLog.checker(imsUri) + ". use default.");
        return get(uRIServiceType);
    }

    public void updateUriGenerator(ImsRegistration imsRegistration, ImsUri.UriType uriType) {
        UriGenerator uriGenerator;
        for (NameAddr nameAddr : imsRegistration.getImpuList()) {
            boolean hasVolteService = imsRegistration.hasVolteService();
            boolean hasRcsService = imsRegistration.hasRcsService();
            ImsUri uri = nameAddr.getUri();
            for (UriGenerator.URIServiceType uRIServiceType : UriGenerator.URIServiceType.values()) {
                if ((hasVolteService || uRIServiceType != UriGenerator.URIServiceType.VOLTE_URI) && (hasRcsService || uRIServiceType != UriGenerator.URIServiceType.RCS_URI)) {
                    if (!contains(uri, uRIServiceType)) {
                        uriGenerator = create(imsRegistration, uriType);
                        uriGenerator.extractOwnAreaCode(imsRegistration.getPreferredImpu().getUri().getMsisdn());
                        uriGenerator.updateRat(imsRegistration.getCurrentRat());
                    } else {
                        uriGenerator = get(uri, uRIServiceType);
                    }
                    if (hasVolteService) {
                        uriGenerator.updateNetworkPreferredUriType(UriGenerator.URIServiceType.VOLTE_URI, uriType);
                    }
                    if (hasRcsService) {
                        uriGenerator.updateNetworkPreferredUriType(UriGenerator.URIServiceType.RCS_URI, uriType);
                    }
                    add(uri, uriGenerator, uRIServiceType);
                }
            }
        }
    }
}
