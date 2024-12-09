package com.sec.internal.ims.servicemodules.im;

import android.content.Intent;
import android.util.Log;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.constants.ims.servicemodules.im.result.Result;
import com.sec.internal.ims.servicemodules.im.interfaces.ImIntent;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.log.IMSLog;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class TranslationBase {
    private static final String LOG_TAG = "TranslationBase";

    /* renamed from: com.sec.internal.ims.servicemodules.im.TranslationBase$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode;

        static {
            int[] iArr = new int[IMnoStrategy.StatusCode.values().length];
            $SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode = iArr;
            try {
                iArr[IMnoStrategy.StatusCode.DISPLAY_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode[IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode[IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY_CFS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode[IMnoStrategy.StatusCode.DISPLAY_ERROR_CFS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    protected int getRequiredAction(IMnoStrategy.StatusCode statusCode) {
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode[statusCode.ordinal()];
        if (i == 2) {
            return 1;
        }
        if (i != 3) {
            return i != 4 ? 0 : 3;
        }
        return 2;
    }

    protected void putMaapExtras(MessageBase messageBase, Intent intent) {
        String suggestion = messageBase.getSuggestion();
        if (suggestion != null) {
            try {
                JSONObject jSONObject = new JSONObject(suggestion);
                jSONObject.remove("persistent");
                suggestion = jSONObject.toString();
            } catch (JSONException e) {
                e.printStackTrace();
                Log.e(LOG_TAG, "no suggestions ");
            }
            Log.i(LOG_TAG, "suggestion = " + IMSLog.checker(suggestion));
            intent.putExtra(ImIntent.Extras.SUGGESTION_TEXT, suggestion);
        }
        String maapTrafficType = messageBase.getMaapTrafficType();
        if (maapTrafficType != null) {
            Log.i(LOG_TAG, "maapTrafficType = [" + maapTrafficType + "]");
            intent.putExtra("maap_traffic_type", maapTrafficType);
        }
    }

    public Intent createMessageSendingFailedIntent(MessageBase messageBase, IMnoStrategy.StrategyResponse strategyResponse, Result result) {
        Intent intent = new Intent(ImIntent.Action.RECEIVE_SEND_MESSAGE_RESPONSE);
        intent.addCategory(ImIntent.CATEGORY_ACTION);
        intent.putExtra("message_imdn_id", messageBase.getImdnId());
        intent.putExtra("response_status", false);
        intent.putExtra(ImIntent.Extras.ERROR_REASON, messageBase.getRcsStrategy() != null ? messageBase.getRcsStrategy().getErrorReasonForStrategyResponse(messageBase, strategyResponse) : null);
        if (messageBase.getRcsStrategy() != null && result != null) {
            if (messageBase.getRcsStrategy().isDisplayBotError() && result.getSipResponse() != null) {
                intent.putExtra(ImIntent.Extras.SIP_ERROR, result.getSipResponse().getId());
            }
            if (messageBase.getRcsStrategy().isDisplayBotError() && result.getMsrpResponse() != null) {
                intent.putExtra(ImIntent.Extras.SIP_ERROR, result.getMsrpResponse().getId());
            }
            if (messageBase.getRcsStrategy().isDisplayWarnText() && result.getImError() != null) {
                intent.putExtra(ImIntent.Extras.WARN_TEXT, result.getImError().toString());
            }
        }
        intent.putExtra("request_message_id", messageBase.getRequestMessageId() == null ? -1L : Long.valueOf(messageBase.getRequestMessageId()).longValue());
        intent.putExtra("is_broadcast_msg", messageBase.isBroadcastMsg());
        if (strategyResponse != null) {
            intent.putExtra(ImIntent.Extras.REQUIRED_ACTION, getRequiredAction(strategyResponse.getStatusCode()));
            intent.putExtra(ImIntent.Extras.ERROR_NOTIFICATION_ID, strategyResponse.getErrorNotificationId().ordinal());
        } else {
            intent.putExtra(ImIntent.Extras.REQUIRED_ACTION, getRequiredAction(IMnoStrategy.StatusCode.DISPLAY_ERROR));
            intent.putExtra(ImIntent.Extras.ERROR_NOTIFICATION_ID, IMnoStrategy.ErrorNotificationId.NONE.ordinal());
        }
        return intent;
    }

    public Intent createImdnNotificationReceivedIntent(MessageBase messageBase, ImsUri imsUri, NotificationStatus notificationStatus, boolean z) {
        Intent intent = new Intent(ImIntent.Action.RECEIVE_MESSAGE_NOTIFICATION_STATUS);
        intent.addCategory(ImIntent.CATEGORY_ACTION);
        intent.putExtra("message_imdn_id", messageBase.getImdnId());
        intent.putExtra("chat_id", messageBase.getChatId());
        intent.putExtra("message_notification_status", messageBase.getNotificationStatus().getId());
        intent.putExtra(ImIntent.Extras.MESSAGE_NOTIFICATION_STATUS_RECEIVED, messageBase.getLastNotificationType().getId());
        intent.putExtra("is_group_chat", z);
        return intent;
    }
}
