package com.android.systemui.bixby2;

import android.app.SemStatusBarManager;
import android.content.Context;
import android.net.Uri;
import android.os.SystemProperties;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.TextUtils;
import android.util.Log;
import com.android.systemui.NotiRune;
import com.android.systemui.bixby2.interactor.ActionInteractor;
import com.android.systemui.bixby2.interactor.AppControlActionInteractor;
import com.android.systemui.bixby2.interactor.DeviceControlActionInteractor;
import com.android.systemui.bixby2.interactor.MusicControlActionInteractor;
import com.android.systemui.bixby2.interactor.NotificationControlActionInteractor;
import com.android.systemui.bixby2.interactor.ScreenControlActionInteractor;
import com.android.systemui.bixby2.interactor.ShareViaActionInteractor;
import com.android.systemui.statusbar.LockscreenNotificationInfo;
import com.android.systemui.statusbar.notification.SubscreenDeviceModelParent;
import com.android.systemui.statusbar.notification.SubscreenNotificationController;
import com.android.systemui.statusbar.notification.SubscreenNotificationInfo;
import com.android.systemui.statusbar.notification.SubscreenNotificationInfoManager;
import com.android.systemui.statusbar.notification.SubscreenSubRoomNotification;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.stack.NotificationChildrenContainer;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonPrimitive;
import com.samsung.android.sdk.bixby2.AppMetaInfo;
import com.samsung.android.sdk.bixby2.Sbixby;
import com.samsung.android.sdk.bixby2.state.StateHandler;
import com.samsung.android.sdk.command.Command;
import com.samsung.android.sdk.command.CommandSdk;
import com.samsung.android.sdk.command.action.CommandAction;
import com.samsung.android.sdk.command.provider.ICommandActionCallback;
import com.samsung.android.sdk.command.provider.ICommandActionHandler;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class SystemUICommandActionHandler implements ICommandActionHandler {
    private static final String CAPSULE_ID = "viv.systemApp";
    private static final String TAG = "SystemUICommandActionHandler";
    private List<ActionInteractor> mActionInteractors = new ArrayList();
    private Map<String, Command> mCommandMap = null;
    private final Context mContext;
    SubscreenNotificationController mSubscreenNotificationController;

    public SystemUICommandActionHandler(Context context, AppControlActionInteractor appControlActionInteractor, DeviceControlActionInteractor deviceControlActionInteractor, MusicControlActionInteractor musicControlActionInteractor, NotificationControlActionInteractor notificationControlActionInteractor, ScreenControlActionInteractor screenControlActionInteractor, ShareViaActionInteractor shareViaActionInteractor, SubscreenNotificationController subscreenNotificationController) {
        Log.d(TAG, "SystemUICommandActionHandler()");
        this.mContext = context;
        this.mActionInteractors.add(appControlActionInteractor);
        this.mActionInteractors.add(deviceControlActionInteractor);
        this.mActionInteractors.add(musicControlActionInteractor);
        this.mActionInteractors.add(notificationControlActionInteractor);
        this.mActionInteractors.add(screenControlActionInteractor);
        this.mActionInteractors.add(shareViaActionInteractor);
        this.mSubscreenNotificationController = subscreenNotificationController;
        Object obj = CommandSdk.sWaitLock;
        CommandSdk commandSdk = CommandSdk.LazyHolder.INSTANCE;
        commandSdk.getClass();
        Object obj2 = CommandSdk.sWaitLock;
        synchronized (obj2) {
            commandSdk.mActionHandler = this;
            Log.d("[CmdL-2.0.8]CommandSdk", "set the action handler");
            obj2.notifyAll();
        }
        Sbixby.initialize(context);
        Sbixby sbixby = Sbixby.getInstance();
        int parseInt = Integer.parseInt(SystemProperties.get("ro.build.version.release"));
        sbixby.getClass();
        if (!TextUtils.isEmpty(CAPSULE_ID)) {
            if (Sbixby.appMetaInfoMap == null) {
                Sbixby.appMetaInfoMap = new HashMap();
            }
            ((HashMap) Sbixby.appMetaInfoMap).put(CAPSULE_ID, new AppMetaInfo(CAPSULE_ID, parseInt));
            updateSbixbyStateChange();
            return;
        }
        throw new IllegalArgumentException("capsuleId cannot be null or empty");
    }

    private Map<String, Command> getAvailableCommands() {
        if (this.mCommandMap == null) {
            loadAvailableCommands();
        }
        return this.mCommandMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPanelBarExpanded() {
        SemStatusBarManager semStatusBarManager = (SemStatusBarManager) this.mContext.getSystemService(SemStatusBarManager.class);
        if (semStatusBarManager != null) {
            return semStatusBarManager.isPanelExpanded();
        }
        return false;
    }

    private void loadAvailableCommands() {
        if (this.mCommandMap == null) {
            this.mCommandMap = new HashMap();
            ArrayList arrayList = new ArrayList();
            Iterator<ActionInteractor> it = this.mActionInteractors.iterator();
            while (it.hasNext()) {
                arrayList.addAll(it.next().getSupportingActions());
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                String str = (String) it2.next();
                String uri = new Uri.Builder().scheme("command").authority(this.mContext.getPackageName() + ".command").appendPath(str).build().toString();
                Command.StatelessBuilder statelessBuilder = new Command.StatelessBuilder(uri);
                statelessBuilder.mTitle = str;
                statelessBuilder.mStatus = 0;
                this.mCommandMap.put(uri, statelessBuilder.build());
            }
        }
    }

    private void updateSbixbyStateChange() {
        try {
            StateHandler stateHandler = StateHandler.getInstance();
            StateHandler.Callback callback = new StateHandler.Callback() { // from class: com.android.systemui.bixby2.SystemUICommandActionHandler.1
                @Override // com.samsung.android.sdk.bixby2.state.StateHandler.Callback
                public String onAppStateRequested() {
                    JsonObject jsonObject;
                    JsonArray jsonArray;
                    JsonArray jsonArray2;
                    String str;
                    JsonObject jsonObject2;
                    SubscreenDeviceModelParent subscreenDeviceModelParent;
                    SubscreenSubRoomNotification subscreenSubRoomNotification;
                    String str2;
                    JsonElement jsonPrimitive;
                    JsonElement jsonPrimitive2;
                    JsonObject jsonObject3;
                    SubscreenSubRoomNotification subscreenSubRoomNotification2;
                    boolean bixbyNotificationVisible;
                    JsonObject jsonObject4 = new JsonObject();
                    JsonObject jsonObject5 = new JsonObject();
                    new JsonParser();
                    JsonArray jsonArray3 = new JsonArray();
                    JsonArray jsonArray4 = new JsonArray();
                    if (NotiRune.NOTI_SUBSCREEN_ALL && (subscreenDeviceModelParent = SystemUICommandActionHandler.this.mSubscreenNotificationController.mDeviceModel) != null && (subscreenSubRoomNotification = subscreenDeviceModelParent.mSubRoomNotification) != null) {
                        JsonObject jsonObject6 = new JsonObject();
                        jsonObject6.addProperty("isShowNotiScreen", Boolean.valueOf(subscreenSubRoomNotification.mIsInNotiRoom));
                        boolean z = subscreenSubRoomNotification.mIsShownDetail;
                        if (z) {
                            str2 = "detail";
                        } else if (subscreenSubRoomNotification.mIsShownGroup && !z) {
                            str2 = "group";
                        } else {
                            str2 = "list";
                        }
                        jsonObject6.addProperty("currentPageLevel", str2);
                        subscreenSubRoomNotification.mNotificationInfoManager.getClass();
                        int notificationInfoArraySize = SubscreenNotificationInfoManager.getNotificationInfoArraySize();
                        JsonArray jsonArray5 = new JsonArray();
                        int i = 0;
                        int i2 = 0;
                        while (i < notificationInfoArraySize) {
                            subscreenSubRoomNotification.mNotificationInfoManager.getClass();
                            SubscreenNotificationInfo createItemsData = subscreenSubRoomNotification.mNotificationInfoManager.createItemsData(((LockscreenNotificationInfo) SubscreenNotificationInfoManager.mLockscreenNotificationInfoArray.get(i)).mRow);
                            boolean bixbyNotificationVisible2 = subscreenSubRoomNotification.getBixbyNotificationVisible(createItemsData.mKey);
                            int i3 = notificationInfoArraySize;
                            JsonArray jsonArray6 = jsonArray3;
                            JsonArray jsonArray7 = jsonArray4;
                            if (createItemsData.mRemoteinput) {
                                JsonObject jsonObject7 = new JsonObject();
                                jsonObject3 = jsonObject5;
                                jsonObject7.addProperty("notiID", createItemsData.mKey);
                                jsonObject7.addProperty("notiTitle", createItemsData.getTitle());
                                jsonObject7.addProperty("notiAppname", createItemsData.mAppName);
                                jsonObject7.addProperty("notiVisible", Boolean.valueOf(bixbyNotificationVisible2));
                                jsonArray5.add(jsonObject7);
                                i2++;
                            } else {
                                jsonObject3 = jsonObject5;
                            }
                            if (createItemsData.mGroupSummary) {
                                NotificationChildrenContainer notificationChildrenContainer = createItemsData.mRow.mChildrenContainer;
                                int notificationChildCount = notificationChildrenContainer.getNotificationChildCount();
                                int i4 = 0;
                                while (i4 < notificationChildCount) {
                                    int i5 = notificationChildCount;
                                    JsonObject jsonObject8 = new JsonObject();
                                    boolean z2 = bixbyNotificationVisible2;
                                    NotificationChildrenContainer notificationChildrenContainer2 = notificationChildrenContainer;
                                    SubscreenNotificationInfo createItemsData2 = subscreenSubRoomNotification.mNotificationInfoManager.createItemsData((ExpandableNotificationRow) ((ArrayList) notificationChildrenContainer.mAttachedChildren).get(i4));
                                    if (createItemsData2.mRemoteinput) {
                                        if (!subscreenSubRoomNotification.mIsShownGroup && !subscreenSubRoomNotification.mIsShownDetail) {
                                            subscreenSubRoomNotification2 = subscreenSubRoomNotification;
                                            bixbyNotificationVisible = z2;
                                        } else {
                                            bixbyNotificationVisible = subscreenSubRoomNotification.getBixbyNotificationVisible(createItemsData2.mKey);
                                            subscreenSubRoomNotification2 = subscreenSubRoomNotification;
                                        }
                                        jsonObject8.addProperty("notiID", createItemsData2.mKey);
                                        jsonObject8.addProperty("notiTitle", createItemsData2.getTitle());
                                        jsonObject8.addProperty("notiAppname", createItemsData2.mAppName);
                                        jsonObject8.addProperty("notiVisible", Boolean.valueOf(bixbyNotificationVisible));
                                        jsonArray5.add(jsonObject8);
                                        i2++;
                                    } else {
                                        subscreenSubRoomNotification2 = subscreenSubRoomNotification;
                                    }
                                    i4++;
                                    notificationChildCount = i5;
                                    bixbyNotificationVisible2 = z2;
                                    notificationChildrenContainer = notificationChildrenContainer2;
                                    subscreenSubRoomNotification = subscreenSubRoomNotification2;
                                }
                            }
                            i++;
                            notificationInfoArraySize = i3;
                            jsonArray3 = jsonArray6;
                            jsonArray4 = jsonArray7;
                            jsonObject5 = jsonObject3;
                            subscreenSubRoomNotification = subscreenSubRoomNotification;
                        }
                        jsonObject = jsonObject5;
                        jsonArray = jsonArray3;
                        jsonArray2 = jsonArray4;
                        Integer valueOf = Integer.valueOf(i2);
                        if (valueOf == null) {
                            jsonPrimitive = JsonNull.INSTANCE;
                        } else {
                            jsonPrimitive = new JsonPrimitive(valueOf);
                        }
                        jsonObject6.add("notiCount", jsonPrimitive);
                        JsonObject jsonObject9 = new JsonObject();
                        JsonArray jsonArray8 = new JsonArray();
                        JsonObject jsonObject10 = new JsonObject();
                        jsonObject10.addProperty("type", "viv.systemApp.CoverReplicableNotiList");
                        JsonArray jsonArray9 = new JsonArray();
                        JsonObject jsonObject11 = new JsonObject();
                        jsonObject11.add("coverScreenInfo", jsonObject6);
                        jsonObject11.add("coverNotificationList", jsonArray5);
                        jsonArray9.add(jsonObject11);
                        jsonObject10.add("values", jsonArray9);
                        jsonArray8.add(jsonObject10);
                        jsonObject9.add("concepts", jsonArray8);
                        jsonObject9.addProperty("capsuleId", SystemUICommandActionHandler.CAPSULE_ID);
                        jsonObject9.addProperty("appId", "com.sec.android.app.system");
                        if (1200004531 == null) {
                            jsonPrimitive2 = JsonNull.INSTANCE;
                        } else {
                            jsonPrimitive2 = new JsonPrimitive((Number) 1200004531);
                        }
                        jsonObject9.add("appVersionCode", jsonPrimitive2);
                        str = jsonObject9.toString();
                    } else {
                        jsonObject = jsonObject5;
                        jsonArray = jsonArray3;
                        jsonArray2 = jsonArray4;
                        str = null;
                    }
                    if (str != null) {
                        jsonObject2 = (JsonObject) JsonParser.parseString(str);
                    } else {
                        jsonObject2 = new JsonObject();
                    }
                    jsonObject4.addProperty("type", "CloseQuickPanelScreen");
                    JsonObject jsonObject12 = jsonObject;
                    jsonObject12.addProperty("panelExpanded", Boolean.valueOf(SystemUICommandActionHandler.this.isPanelBarExpanded()));
                    JsonArray jsonArray10 = jsonArray2;
                    jsonArray10.add(jsonObject12);
                    jsonObject4.add("value", jsonArray10);
                    JsonArray jsonArray11 = jsonArray;
                    jsonArray11.add(jsonObject4);
                    jsonObject2.add("llmContext", jsonArray11);
                    jsonObject2.addProperty("llmCapsuleId", "samsung.systemApp");
                    Log.d(SystemUICommandActionHandler.TAG, "onAppStateRequested: " + jsonObject2);
                    return jsonObject2.toString();
                }

                @Override // com.samsung.android.sdk.bixby2.state.StateHandler.Callback
                public String onCapsuleIdRequested() {
                    return SystemUICommandActionHandler.CAPSULE_ID;
                }
            };
            stateHandler.getClass();
            stateHandler.mCallback = callback;
        } catch (IllegalArgumentException e) {
            Log.d(TAG, "updateAppState() IllegalArgumentException : " + e.getMessage());
        }
    }

    @Override // com.samsung.android.sdk.command.provider.ICommandActionHandler
    public List<Command> createStatelessCommands() {
        Log.d(TAG, "createStatelessCommands()");
        return new ArrayList(getAvailableCommands().values());
    }

    @Override // com.samsung.android.sdk.command.provider.ICommandActionHandler
    public Command loadStatefulCommand(String str) {
        MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("loadStatefulCommand(), commandId = ", str, TAG);
        Map<String, Command> availableCommands = getAvailableCommands();
        Command command = availableCommands.containsKey(str) ? availableCommands.get(str) : null;
        if (command != null) {
            String lastPathSegment = Uri.parse(command.mCommandId).getLastPathSegment();
            Iterator<ActionInteractor> it = this.mActionInteractors.iterator();
            while (it.hasNext()) {
                Command loadStatefulCommandInteractor = it.next().loadStatefulCommandInteractor(lastPathSegment, command);
                if (loadStatefulCommandInteractor != null) {
                    return loadStatefulCommandInteractor;
                }
            }
        }
        return null;
    }

    @Override // com.samsung.android.sdk.command.provider.ICommandActionHandler
    public /* bridge */ /* synthetic */ CommandAction migrateCommandAction(String str, CommandAction commandAction) {
        return null;
    }

    @Override // com.samsung.android.sdk.command.provider.ICommandActionHandler
    public void performCommandAction(String str, CommandAction commandAction, ICommandActionCallback iCommandActionCallback) {
        Log.d(TAG, "performCommandAction(), commandId = " + str);
        Command loadStatefulCommand = loadStatefulCommand(str);
        if (loadStatefulCommand != null) {
            String lastPathSegment = Uri.parse(loadStatefulCommand.mCommandId).getLastPathSegment();
            Iterator<ActionInteractor> it = this.mActionInteractors.iterator();
            while (it.hasNext()) {
                it.next().performCommandActionInteractor(lastPathSegment, commandAction, iCommandActionCallback);
            }
        }
    }

    @Override // com.samsung.android.sdk.command.provider.ICommandActionHandler
    public Command loadStatefulCommand(String str, CommandAction commandAction) {
        MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("loadStatefulCommand()(with action) commandId = ", str, TAG);
        Map<String, Command> availableCommands = getAvailableCommands();
        Command command = availableCommands.containsKey(str) ? availableCommands.get(str) : null;
        if (command != null) {
            String lastPathSegment = Uri.parse(command.mCommandId).getLastPathSegment();
            Iterator<ActionInteractor> it = this.mActionInteractors.iterator();
            while (it.hasNext()) {
                Command loadStatefulCommandInteractor = it.next().loadStatefulCommandInteractor(lastPathSegment, command, commandAction);
                if (loadStatefulCommandInteractor != null) {
                    return loadStatefulCommandInteractor;
                }
            }
        }
        return null;
    }
}
