package com.sec.internal.ims.servicemodules.options;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.sec.ims.options.Capabilities;
import com.sec.ims.util.ImsUri;
import com.sec.internal.helper.Preconditions;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.interfaces.ims.servicemodules.options.IServiceAvailabilityEventListener;
import com.sec.internal.log.IMSLog;
import java.util.Date;

/* loaded from: classes.dex */
public class ServiceAvailabilityEventListenerUp implements IServiceAvailabilityEventListener {
    private static final int EVT_UPDATE_CAP_TIMESTAMP = 1;
    private static final String LOG_TAG = "ServiceAvailabilityEventListenerUp";
    private final CapabilitiesCache mCapabilitiesList;
    private final Handler mHandler;
    private final UriGenerator mUriGenerator;

    public ServiceAvailabilityEventListenerUp(Looper looper, CapabilitiesCache capabilitiesCache, UriGenerator uriGenerator) {
        Preconditions.checkNotNull(looper);
        Preconditions.checkNotNull(capabilitiesCache);
        this.mCapabilitiesList = capabilitiesCache;
        this.mUriGenerator = uriGenerator;
        this.mHandler = new Handler(looper) { // from class: com.sec.internal.ims.servicemodules.options.ServiceAvailabilityEventListenerUp.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 1) {
                    return;
                }
                ServiceAvailabilityUpdateData serviceAvailabilityUpdateData = (ServiceAvailabilityUpdateData) message.obj;
                ImsUri uri = serviceAvailabilityUpdateData.getUri();
                Date date = serviceAvailabilityUpdateData.getDate();
                String ownIdentity = serviceAvailabilityUpdateData.getOwnIdentity();
                if (SimManagerFactory.getPhoneId(ownIdentity) == -1) {
                    Log.e(ServiceAvailabilityEventListenerUp.LOG_TAG, "EVT_UPDATE_CAP_TIMESTAMP: failed to find phoneId for ownIdentity: " + IMSLog.checker(ownIdentity) + "!");
                    return;
                }
                if (ServiceAvailabilityEventListenerUp.this.mUriGenerator != null) {
                    uri = ServiceAvailabilityEventListenerUp.this.mUriGenerator.normalize(uri);
                } else {
                    Log.e(ServiceAvailabilityEventListenerUp.LOG_TAG, "mUriGenerator is null, URI[" + IMSLog.checker(uri) + "] may not be normalized!");
                }
                Capabilities capabilities = ServiceAvailabilityEventListenerUp.this.mCapabilitiesList.get(uri);
                if (capabilities != null && capabilities.isAvailable()) {
                    if (serviceAvailabilityUpdateData.getDate().after(capabilities.getTimestamp())) {
                        if (date.after(new Date())) {
                            date = new Date();
                        }
                        ServiceAvailabilityEventListenerUp.this.mCapabilitiesList.update(capabilities.getUri(), capabilities.getFeature(), capabilities.getAvailableFeatures(), capabilities.getPidf(), capabilities.getLastSeen(), date, capabilities.getPAssertedId(), capabilities.getExtFeatureAsJoinedString());
                        Log.i(ServiceAvailabilityEventListenerUp.LOG_TAG, "Timestamp for URI[" + IMSLog.checker(uri) + "] updated to " + date.toString());
                        return;
                    }
                    Log.i(ServiceAvailabilityEventListenerUp.LOG_TAG, "Message timestamp is older than the last recorded timestamp for URI[" + IMSLog.checker(uri) + "], ignore.");
                    return;
                }
                String str = ServiceAvailabilityEventListenerUp.LOG_TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("URI[");
                sb.append(IMSLog.checker(uri));
                sb.append("] ");
                sb.append(capabilities);
                Log.i(str, sb.toString() != null ? "is offline, ignore." : "has no caps in db, ignore.");
            }
        };
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.options.IServiceAvailabilityEventListener
    public void onServiceAvailabilityUpdate(String str, ImsUri imsUri, Date date) {
        Handler handler = this.mHandler;
        handler.sendMessage(handler.obtainMessage(1, new ServiceAvailabilityUpdateData(date, str, imsUri)));
    }

    private class ServiceAvailabilityUpdateData {
        private Date date;
        private String ownIdentity;
        private ImsUri uri;

        ServiceAvailabilityUpdateData(Date date, String str, ImsUri imsUri) {
            this.uri = imsUri;
            this.date = date;
            this.ownIdentity = str;
        }

        public ImsUri getUri() {
            return this.uri;
        }

        public Date getDate() {
            return this.date;
        }

        public String getOwnIdentity() {
            return this.ownIdentity;
        }
    }
}
