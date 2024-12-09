package com.sec.internal.ims.util;

import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.options.Capabilities;
import com.sec.ims.options.CapabilityRefreshType;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.servicemodules.options.BotServiceIdTranslator;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.ImCache;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityDiscoveryModule;
import java.util.Collection;
import java.util.Collections;

/* loaded from: classes.dex */
public class ChatbotUriUtil {
    private static final String LOG_TAG = "ChatbotUriUtil";

    private ChatbotUriUtil() {
    }

    public static boolean isChatbotUri(ImsUri imsUri, int i) {
        return hasChatbotUri(Collections.singleton(imsUri), i);
    }

    public static boolean hasChatbotUri(Collection<ImsUri> collection, int i) {
        if (collection == null) {
            return false;
        }
        for (ImsUri imsUri : collection) {
            if (hasUriBotPlatform(imsUri, i) || hasChatbotRoleSession(imsUri, i) || isKnownBotServiceId(imsUri, i) || hasChatbotRoleCapability(i, imsUri)) {
                return true;
            }
        }
        return false;
    }

    public static boolean hasUriBotPlatform(ImsUri imsUri, int i) {
        if (imsUri != null && imsUri.getUriType() == ImsUri.UriType.SIP_URI && !TextUtils.isEmpty(imsUri.getHost())) {
            String string = ImsRegistry.getString(i, GlobalSettingsConstants.RCS.BOT_SERVICE_ID_PREFIX_LIST, "");
            if (TextUtils.isEmpty(string)) {
                return false;
            }
            for (String str : string.split(",")) {
                if (imsUri.getHost().contains(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean hasChatbotRoleSession(ImsUri imsUri, int i) {
        return ImCache.getInstance().isChatbotRoleUri(imsUri, SimManagerFactory.getImsiFromPhoneId(i));
    }

    public static boolean isKnownBotServiceId(ImsUri imsUri, int i) {
        return imsUri != null && BotServiceIdTranslator.getInstance().contains(imsUri.toString(), i).booleanValue();
    }

    public static void updateChatbotCapability(int i, ImsUri imsUri, boolean z) {
        ICapabilityDiscoveryModule capabilityDiscoveryModule = ImsRegistry.isReady() ? ImsRegistry.getServiceModuleManager().getCapabilityDiscoveryModule() : null;
        Capabilities capabilities = capabilityDiscoveryModule != null ? capabilityDiscoveryModule.getCapabilitiesCache(i).get(imsUri) : null;
        if (capabilities == null) {
            return;
        }
        if (z) {
            capabilities.addFeature(Capabilities.FEATURE_CHATBOT_ROLE);
        } else {
            capabilities.removeFeature(Capabilities.FEATURE_CHATBOT_ROLE);
        }
        Log.i(LOG_TAG, "addChatbotCapability : capabilities" + capabilities);
        capabilityDiscoveryModule.getCapabilitiesCache(i).update(capabilities.getUri(), capabilities.getFeature(), capabilities.getAvailableFeatures(), capabilities.getPidf(), capabilities.getLastSeen(), capabilities.getTimestamp(), capabilities.getPAssertedId(), capabilities.getExtFeatureAsJoinedString());
    }

    private static boolean hasChatbotRoleCapability(int i, ImsUri imsUri) {
        ICapabilityDiscoveryModule capabilityDiscoveryModule = ImsRegistry.isReady() ? ImsRegistry.getServiceModuleManager().getCapabilityDiscoveryModule() : null;
        Capabilities capabilities = capabilityDiscoveryModule != null ? capabilityDiscoveryModule.getCapabilities(imsUri, CapabilityRefreshType.DISABLED, i) : null;
        if (capabilities == null) {
            return false;
        }
        return RcsPolicyManager.getRcsStrategy(i).boolSetting(RcsPolicySettings.RcsPolicy.USE_AVAILABLE_FEATURES_FOR_CHATBOT) ? capabilities.isFeatureAvailable(Capabilities.FEATURE_CHATBOT_ROLE) : capabilities.hasFeature(Capabilities.FEATURE_CHATBOT_ROLE);
    }
}
