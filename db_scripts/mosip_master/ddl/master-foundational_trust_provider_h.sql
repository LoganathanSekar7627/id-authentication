-- -------------------------------------------------------------------------------------------------
-- Database Name: mosip_master
-- Table Name 	: master.foundational_trust_provider_h
-- Purpose    	: Foundational Trust Provider History : History of changes of any Foundational Trust Provider will be stored in history table to track any chnages for future validations.
--           
-- Create By   	: Sadanandegowda
-- Created Date	: 04-Oct-2019
-- 
-- Modified Date        Modified By         Comments / Remarks
-- ------------------------------------------------------------------------------------------
-- 
-- ------------------------------------------------------------------------------------------

-- object: master.foundational_trust_provider_h | type: TABLE --
-- DROP TABLE IF EXISTS master.foundational_trust_provider_h CASCADE;
CREATE TABLE master.foundational_trust_provider_h(
	id character varying(36) NOT NULL,
	name character varying(128) NOT NULL,
	address character varying(512),
	email character varying(256),
	contact_number character varying(16),
	certificate_alias character varying(36),
	is_active boolean NOT NULL,
	cr_by character varying(256) NOT NULL,
	cr_dtimes timestamp NOT NULL,
	upd_by character varying(256),
	upd_dtimes timestamp,
	is_deleted boolean,
	del_dtimes timestamp,
	eff_dtimes timestamp NOT NULL,
	CONSTRAINT pk_ftprdh_id PRIMARY KEY (id,eff_dtimes)

);
-- ddl-end --
COMMENT ON TABLE master.foundational_trust_provider_h IS 'Foundational Trust Provider History : History of changes of any Foundational Trust Provider will be stored in history table to track any chnages for future validations.';
-- ddl-end --
COMMENT ON COLUMN master.foundational_trust_provider_h.id IS 'Foundational Trust Provider ID: Unique ID of the trust provider, Trust provider id is generated by MOSIP system.';
-- ddl-end --
COMMENT ON COLUMN master.foundational_trust_provider_h.name IS 'Foundational Trust Provider Name : Name of the trust provider, Those trust provider''s certicate used by chip/device manufacturer.';
-- ddl-end --
COMMENT ON COLUMN master.foundational_trust_provider_h.address IS 'Address : Postal address of the trust provider, This will have full address of the trust provider including postal code.';
-- ddl-end --
COMMENT ON COLUMN master.foundational_trust_provider_h.email IS 'Email Address : Email address of the foundational trust providers';
-- ddl-end --
COMMENT ON COLUMN master.foundational_trust_provider_h.contact_number IS 'Contact Number : Contact number of the foundational trust provider';
-- ddl-end --
COMMENT ON COLUMN master.foundational_trust_provider_h.certificate_alias IS 'Certificate Alias : Its certificate alias which is stored in HSM and provided by MOSIP to a trust provider';
-- ddl-end --
COMMENT ON COLUMN master.foundational_trust_provider_h.is_active IS 'IS_Active : Flag to mark whether the record/device is Active or In-active';
-- ddl-end --
COMMENT ON COLUMN master.foundational_trust_provider_h.cr_by IS 'Created By : ID or name of the user who create / insert record';
-- ddl-end --
COMMENT ON COLUMN master.foundational_trust_provider_h.cr_dtimes IS 'Created DateTimestamp : Date and Timestamp when the record is created/inserted';
-- ddl-end --
COMMENT ON COLUMN master.foundational_trust_provider_h.upd_by IS 'Updated By : ID or name of the user who update the record with new values';
-- ddl-end --
COMMENT ON COLUMN master.foundational_trust_provider_h.upd_dtimes IS 'Updated DateTimestamp : Date and Timestamp when any of the fields in the record is updated with new values.';
-- ddl-end --
COMMENT ON COLUMN master.foundational_trust_provider_h.is_deleted IS 'IS_Deleted : Flag to mark whether the record is Soft deleted.';
-- ddl-end --
COMMENT ON COLUMN master.foundational_trust_provider_h.del_dtimes IS 'Deleted DateTimestamp : Date and Timestamp when the record is soft deleted with is_deleted=TRUE';
-- ddl-end --
COMMENT ON COLUMN master.foundational_trust_provider_h.eff_dtimes IS 'Effective Date Timestamp : This to track master record whenever there is an INSERT/UPDATE/DELETE ( soft delete ).  The current record is effective from this date-time.';
-- ddl-end --