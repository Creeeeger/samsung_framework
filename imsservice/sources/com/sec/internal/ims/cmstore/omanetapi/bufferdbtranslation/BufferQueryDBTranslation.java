package com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.ims.cmstore.MessageStoreClient;

/* loaded from: classes.dex */
public class BufferQueryDBTranslation {
    protected static final Uri CONTENT_URI_BUFFERDB = Uri.parse("content://com.samsung.rcs.cmstore");
    public static final String PROVIDER_NAME_BUFFERDB = "com.samsung.rcs.cmstore";
    private String SLOT_ID;
    protected Context mContext;
    protected int mPhoneId;
    protected final ContentResolver mResolver;
    protected MessageStoreClient mStoreClient;

    public enum MessageType {
        MESSAGE_CHAT,
        MESSAGE_SLM,
        MESSAGE_FT
    }

    public BufferQueryDBTranslation(MessageStoreClient messageStoreClient) {
        this.SLOT_ID = "";
        this.mPhoneId = 0;
        this.mStoreClient = messageStoreClient;
        Context context = messageStoreClient.getContext();
        this.mContext = context;
        this.mResolver = context.getContentResolver();
        this.SLOT_ID = messageStoreClient.getClientID() != 0 ? "slot2/" : "";
        this.mPhoneId = this.mStoreClient.getClientID();
    }

    protected Cursor queryVvmGreetingBufferDB(long j) {
        return this.mResolver.query(Uri.parse(CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_VVMGREETING + "/" + this.SLOT_ID + j), null, null, null, null);
    }

    protected Cursor queryRCSParticipantDB(String str) {
        return this.mResolver.query(Uri.parse(CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_RCSPARTICIPANTS + "/" + this.SLOT_ID + str), null, null, null, null);
    }

    protected Cursor queryRCSSessionDB(String str) {
        return this.mResolver.query(Uri.parse(CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_RCSSESSION + "/" + this.SLOT_ID + str), null, "chat_id= ?", null, null);
    }

    protected Cursor querySMSBufferDB(long j) {
        return this.mResolver.query(Uri.parse(CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_SMSMESSAGES + "/" + this.SLOT_ID + j), null, null, null, null);
    }

    protected Cursor queryGroupSMS(long j) {
        return this.mResolver.query(Uri.parse(CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_ALL_SMSMESSAGES + "/" + this.SLOT_ID), null, "group_id= ?", new String[]{String.valueOf(j)}, null);
    }

    protected Cursor querySummaryDB(long j) {
        return this.mResolver.query(Uri.parse(CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_SUMMARYTABLE + "/" + this.SLOT_ID + j), null, null, null, null);
    }

    protected Cursor queryRCSNotificationDB(long j) {
        return this.mResolver.query(Uri.parse(CONTENT_URI_BUFFERDB + "/notification/" + this.SLOT_ID + j), null, null, null, null);
    }

    protected Cursor queryRCSNotificationDBUsingImdnAndTelUri(String str, String str2) {
        return this.mResolver.query(Uri.parse(CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_NOTIFICATION_IMDN + "/" + this.SLOT_ID + str), null, "imdn_id=? AND sender_uri=?", new String[]{str, str2}, null);
    }

    protected Cursor queryRCSMessageDBUsingRowId(long j) {
        return this.mResolver.query(Uri.parse(CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_RCSMESSAGES + "/" + this.SLOT_ID + j), null, null, null, null);
    }

    protected Cursor queryRCSMessageDBUsingImdn(String str) {
        return this.mResolver.query(Uri.parse(CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_RCSMESSAGEIMDN + "/" + this.SLOT_ID + str), null, null, null, null);
    }

    protected Cursor queryVvmDataBufferDB(long j) {
        return this.mResolver.query(Uri.parse(CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_VVMMESSAGES + "/" + this.SLOT_ID + j), null, null, null, null);
    }

    protected Cursor querymmsPduBufferDB(long j) {
        return this.mResolver.query(Uri.parse(CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_MMSPDUMESSAGE + "/" + this.SLOT_ID + j), null, null, null, null);
    }

    protected Cursor queryAddrBufferDB(long j) {
        return this.mResolver.query(Uri.parse(CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_MMSADDRMESSAGES + "/" + this.SLOT_ID + j), null, null, null, null);
    }

    protected Cursor queryPartsBufferDBUsingPduBufferId(long j) {
        return this.mResolver.query(Uri.parse(CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_MMSPARTMESSAGES_PDUID + "/" + this.SLOT_ID + j), null, null, null, null);
    }

    protected Cursor queryPartsBufferDBUsingPartBufferId(long j) {
        return this.mResolver.query(Uri.parse(CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_MMSPARTMESSAGES_PARTID + "/" + this.SLOT_ID + j), null, null, null, null);
    }

    protected int updateRcsMessageBufferDB(long j, int i, int i2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(i2));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(i));
        return this.mResolver.update(Uri.parse(CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_RCSCHATMESSAGE + "/" + this.SLOT_ID + j), contentValues, "_bufferdbid=?", new String[]{Long.toString(j)});
    }

    protected Cursor queryrcsMessageBufferDB(long j) {
        return this.mResolver.query(Uri.parse(CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_RCSCHATMESSAGE + "/" + this.SLOT_ID + j), null, null, null, null);
    }

    protected Cursor queryVvmPinBufferDB(long j) {
        return this.mResolver.query(Uri.parse(CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_VVMPIN + "/" + this.SLOT_ID + j), null, null, null, null);
    }

    protected Cursor queryVvmProfileBufferDB(long j) {
        return this.mResolver.query(Uri.parse(CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_VVMPROFILE + "/" + this.SLOT_ID + j), null, null, null, null);
    }

    protected Cursor queryGroupSessionDB(long j) {
        return this.mResolver.query(Uri.parse(CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_RCSSESSION + "/" + this.SLOT_ID + j), null, "_bufferdbid= ?", null, null);
    }
}
